#!/bin/sh

if [ -d "build" ]; then
    echo "Directory already exists";
    cd build
else
    `mkdir -p build`;
    echo "build directory is created"
    cd build
fi
rm -rf *
cmake -DCMAKE_BUILD_TYPE=Release -DOATPP_BUILD_TESTS=OFF -DCMAKE_CXX_FLAGS="-w" -DCMAKE_CXX_FLAGS_RELEASE="-Os -fdata-sections -ffunction-sections" -DCMAKE_EXE_LINKER_FLAGS="-Wl,--gc-sections -Wl,--strip-all" ..
make