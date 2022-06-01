#!/bin/bash
#
# my_driver.sh - This is a simple autograder for the Proxy Lab. It does
#     basic sanity checks that determine whether or not the code
#     behaves like a concurrent caching proxy. 
#
#     Thien K M. Bui <buik@carleton.edu>
#     updated: 05/31/2022
# 
#     usage: ./my_driver.sh
# 

# Point values
MAX_BASIC=40
MAX_CONCURRENCY=15
MAX_CACHE=15

# Various constants
HOME_DIR=`pwd`
PROXY_DIR="./.proxy"
NOPROXY_DIR="./.noproxy"
TIMEOUT=5
MAX_RAND=63000
PORT_START=1024
PORT_MAX=65000
MAX_PORT_TRIES=10

# List of text and binary files for the basic test
BASIC_LIST="home.html
            csapp.c
            tiny.c
            godzilla.jpg
            tiny"

# List of text files for the cache test
CACHE_LIST="tiny.c
            home.html
            csapp.c"

# The file we will fetch for various tests
FETCH_FILE="home.html"

#color values for printing
RED='\033[0;31m'
NC='\033[0m' #no color

#####
# Helper functions
#

#
# download_proxy - download a file from the origin server via the proxy
# usage: download_proxy <testdir> <filename> <origin_url> <proxy_url>
#
function download_proxy {
    cd $1
    curl --max-time ${TIMEOUT} --silent --proxy $4 --output $2 $3
    (( $? == 28 )) && echo "Error: Fetch timed out after ${TIMEOUT} seconds"
    cd $HOME_DIR
}

#
# download_noproxy - download a file directly from the origin server
# usage: download_noproxy <testdir> <filename> <origin_url>
#
function download_noproxy {
    cd $1
    curl --max-time ${TIMEOUT} --silent --output $2 $3 
    (( $? == 28 )) && echo "Error: Fetch timed out after ${TIMEOUT} seconds"
    cd $HOME_DIR
}

#
# clear_dirs - Clear the download directories
#
function clear_dirs {
    rm -rf ${PROXY_DIR}/*
    rm -rf ${NOPROXY_DIR}/*
}

#
# wait_for_port_use - Spins until the TCP port number passed as an
#     argument is actually being used. Times out after 5 seconds.
#
function wait_for_port_use() {
    timeout_count="0"
    if [[ $OSTYPE == 'darwin'* ]]; then
        portsinuse=`netstat -a -n | grep tcp4 | cut -c22- | cut -d' ' -f1 \
            | rev | cut -d'.' -f1 | rev | grep -E "[0-9]+" | uniq | tr "\n" " "`
    else
        portsinuse=`netstat --numeric-ports --numeric-hosts -a --protocol=tcpip \
            | grep tcp | cut -c21- | cut -d':' -f2 | cut -d' ' -f1 \
            | grep -E "[0-9]+" | uniq | tr "\n" " "`
    fi

    echo "${portsinuse}" | grep -wq "${1}"
    while [ "$?" != "0" ]
    do
        timeout_count=`expr ${timeout_count} + 1`
        if [ "${timeout_count}" == "${MAX_PORT_TRIES}" ]; then
            kill -ALRM $$
        fi

        sleep 1
            if [[ $OSTYPE == 'darwin'* ]]; then
                portsinuse=`netstat -a -n | grep tcp4 | cut -c22- | cut -d' ' -f1 \
                    | rev | cut -d'.' -f1 | rev | grep -E "[0-9]+" | uniq | tr "\n" " "`
            else
                portsinuse=`netstat --numeric-ports --numeric-hosts -a --protocol=tcpip \
                    | grep tcp | cut -c21- | cut -d':' -f2 | cut -d' ' -f1 \
                    | grep -E "[0-9]+" | uniq | tr "\n" " "`
            fi
        echo "${portsinuse}" | grep -wq "${1}"
    done
}


#
# free_port - returns an available unused TCP port 
#
function free_port {
    # Generate a random port in the range [PORT_START,
    # PORT_START+MAX_RAND]. This is needed to avoid collisions when many
    # students are running the driver on the same machine.
    port=$((( RANDOM % ${MAX_RAND}) + ${PORT_START}))

    while [ TRUE ] 
    do
            if [[ $OSTYPE == 'darwin'* ]]; then
                portsinuse=`netstat -a -n | grep tcp4 | cut -c22- | cut -d' ' -f1 \
                    | rev | cut -d'.' -f1 | rev | grep -E "[0-9]+" | uniq | tr "\n" " "`
            else
                portsinuse=`netstat --numeric-ports --numeric-hosts -a --protocol=tcpip \
                    | grep tcp | cut -c21- | cut -d':' -f2 | cut -d' ' -f1 \
                    | grep -E "[0-9]+" | uniq | tr "\n" " "`
            fi

        echo "${portsinuse}" | grep -wq "${port}"
        if [ "$?" == "0" ]; then
            if [ $port -eq ${PORT_MAX} ]
            then
                echo "-1"
                return
            fi
            port=`expr ${port} + 1`
        else
            echo "${port}"
            return
        fi
    done
}


#######
# Main 
#######

######
# Verify that we have all of the expected files with the right
# permissions
#

# Kill any stray proxies or tiny servers owned by this user
killall -q proxy tiny nop-server.py 2> /dev/null

# Make sure we have a Tiny directory
if [ ! -d ./tiny ]
then 
    echo "Error: ./tiny directory not found."
    exit
fi

# If there is no Tiny executable, then try to build it
if [ ! -x ./tiny/tiny ]
then 
    echo "Building the tiny executable."
    (cd ./tiny; make)
    echo ""
fi

# Make sure we have all the Tiny files we need
if [ ! -x ./tiny/tiny ]
then 
    echo "Error: ./tiny/tiny not found or not an executable file."
    exit
fi
for file in ${BASIC_LIST}
do
    if [ ! -e ./tiny/${file} ]
    then
        echo "Error: ./tiny/${file} not found."
        exit
    fi
done

# Make sure we have an existing executable proxy
if [ ! -x ./proxy ]
then 
    echo "Error: ./proxy not found or not an executable file. Please rebuild your proxy and try again."
    exit
fi

# Make sure we have an existing executable nop-server.py file
if [ ! -x ./nop-server.py ]
then 
    echo "Error: ./nop-server.py not found or not an executable file."
    exit
fi

# Create the test directories if needed
if [ ! -d ${PROXY_DIR} ]
then
    mkdir ${PROXY_DIR}
fi

if [ ! -d ${NOPROXY_DIR} ]
then
    mkdir ${NOPROXY_DIR}
fi

# Add a handler to generate a meaningful timeout message
trap 'echo "Timeout waiting for the server to grab the port reserved for it"; kill $$' ALRM

#####
# Port usage
# Test that Proxy will automatically request a default port
# if port is missing from request.

#If successful, the script will display success
#If not, the script will display a red FAILURE message

echo "*** DEFAULT PORT ***"

#clearing everything before we start
clear_dirs
# Run the Tiny Web server
tiny_port=$(free_port)
echo "Starting tiny on ${tiny_port}"
cd ./tiny
./tiny ${tiny_port}   &> /dev/null  &
tiny_pid=$!
cd ${HOME_DIR}

# Wait for tiny to start in earnest
wait_for_port_use "${tiny_port}"

# Run the proxy
proxy_port=$(free_port)
echo "Starting proxy on ${proxy_port}"
./proxy ${proxy_port}  &> /dev/null &
proxy_pid=$!

# Wait for the proxy to start in earnest
wait_for_port_use "${proxy_port}"


# Now do the test by sending in a request without a port
succeeded=0

echo "Fetching ./tiny/${FETCH_FILE} into ${PROXY_DIR} using the proxy"
download_proxy $PROXY_DIR ${FETCH_FILE} "http://localhost/${FETCH_FILE}" "http://localhost:${proxy_port}"
download_noproxy $NOPROXY_DIR ${FETCH_FILE} "http://localhost:${tiny_port}/home.html"

diff -q ${PROXY_DIR}/${FETCH_FILE} ${NOPROXY_DIR}/${FETCH_FILE} &> /dev/null
if [ $? -eq 0 ]; then
    concurrencyScore=${MAX_CONCURRENCY}
    echo "  SUCCESS: Was able to fetch tiny/${FETCH_FILE} from the proxy."
else
    concurrencyScore=0
    echo -e "  ${RED}FAILURE${NC}: Was not able to fetch tiny/${FETCH_FILE} from the proxy."
fi

#cleanup
clear_dirs
echo "Killing tiny and proxy"
kill $tiny_pid 2> /dev/null
wait $tiny_pid 2> /dev/null
kill $proxy_pid 2> /dev/null
wait $proxy_pid 2> /dev/null

###
# error 404 should be handled correctly
# Proxy should send back a non-empty body in a 404 error, 
# for this test we will only check it against error.html
echo "*** 404 ERROR ***"

#clearing everything before we start
clear_dirs
# Run the Tiny Web server
tiny_port=$(free_port)
echo "Starting tiny on ${tiny_port}"
cd ./tiny
./tiny ${tiny_port}   &> /dev/null  &
tiny_pid=$!
cd ${HOME_DIR}

# Wait for tiny to start in earnest
wait_for_port_use "${tiny_port}"

# Run the proxy
proxy_port=$(free_port)
echo "Starting proxy on ${proxy_port}"
./proxy ${proxy_port}  &> /dev/null &
proxy_pid=$!

# Wait for the proxy to start in earnest
wait_for_port_use "${proxy_port}"


# Now do the test by sending in a request without a port
succeeded=0
download_proxy $PROXY_DIR "unknown.html" "http://localhost:${tiny_port}/unknown.html" "http://localhost:${proxy_port}"
if test -f "${PROXY_DIR}/error.html" ; then
    echo "  SUCCESS: there is an error.html file."
else
    concurrencyScore=0
    echo -e "  ${RED}FAILURE${NC}: error 404 has not been handled."
fi

#cleanup
clear_dirs
echo "Killing tiny and proxy"
kill $tiny_pid 2> /dev/null
wait $tiny_pid 2> /dev/null
kill $proxy_pid 2> /dev/null
wait $proxy_pid 2> /dev/null

###
# POST requests should be handled correctly
# Proxy should send back a non-empty body regardless of whether
# the POST request fails or is successful.
# For this test we will only check if the response is called response.html

echo "*** POST REQUEST ***"
#clearing everything before we start
clear_dirs
# Run the Tiny Web server
tiny_port=$(free_port)
echo "Starting tiny on ${tiny_port}"
cd ./tiny
./tiny ${tiny_port}   &> /dev/null  &
tiny_pid=$!
cd ${HOME_DIR}

# Wait for tiny to start in earnest
wait_for_port_use "${tiny_port}"

# Run the proxy
proxy_port=$(free_port)
echo "Starting proxy on ${proxy_port}"
./proxy ${proxy_port}  &> /dev/null &
proxy_pid=$!

# Wait for the proxy to start in earnest
wait_for_port_use "${proxy_port}"


# Now do the test by sending in a request without a port
succeeded=0

    # cd $1
    # curl --max-time ${TIMEOUT} --silent --proxy $4 --output $2 $3
    # (( $? == 28 )) && echo "Error: Fetch timed out after ${TIMEOUT} seconds"
    # cd $HOME_DIR
cd $PROXY_DIR
curl -X POST --max-time $TIMEOUT --silent --proxy "http://localhost:${proxy_port}" "http://localhost:${tiny_port}/"
(( $? == 28)) && echo "Error: Fetch timed out after ${TIMEOUT} seconds"
cd $HOME_DIR

if test -f "${PROXY_DIR}/response.html" ; then
    echo "  SUCCESS: there is an response.html file."
else
    concurrencyScore=0
    echo -e "  ${RED}FAILURE${NC}: POST response has not been handled."
fi

#cleanup
clear_dirs
echo "Killing tiny and proxy"
kill $tiny_pid 2> /dev/null
wait $tiny_pid 2> /dev/null
kill $proxy_pid 2> /dev/null
wait $proxy_pid 2> /dev/null

exit

