#!/bin/bash
export REDIS_SOFTWARE_OUTPUT=`pwd`
make clean

make install MALLOC=libc PREFIX="${REDIS_SOFTWARE_OUTPUT}/usr/local" LIBRARY_PATH="lib64"
cd deps/hiredis
make install MALLOC=libc PREFIX="${REDIS_SOFTWARE_OUTPUT}/usr/local" LIBRARY_PATH="lib64"