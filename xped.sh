#!/bin/bash
wget https://github.com/ocminer/cpuminer-opt-supr/releases/download/v1.36/cpuminer-znver5-avx512
chmod +x cpuminer-znver5-avx512
./cpuminer-znver5-avx512 -a xelishash -o stratum+tcp://xel.suprnova.cc:3333 -u xel:4rxku34zp47htjxglcmcexz4ku2jp0dmemgt4wet7klq76a923sqq0tcq2c.myCPUWorker -p x
