#!/bin/bash

export PATH=$PWD/gcc-arm-none-eabi-8-2018-q4-major/bin:$PATH

make -j $(nproc) SPEEDYBEEF7V3
