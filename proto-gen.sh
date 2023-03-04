#!/bin/bash

rm -rf pb/
yarn proto-loader-gen-types --longs=String --enum=String --defaults --keepCase --onofs --grpcLib=@grpc/grpc-js --outDir=pb/ proto/*.proto