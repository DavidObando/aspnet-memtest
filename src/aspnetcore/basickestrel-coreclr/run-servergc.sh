#!/usr/bin/env bash

export COREHOST_SERVER_GC=1
dotnet restore --infer-runtimes
dotnet build --configuration release
cp -f ./servergc.json ./bin/release/netcoreapp1.0/ubuntu.14.04-x64/basickestrel-coreclr.runtimeconfig.json
./bin/release/netcoreapp1.0/ubuntu.14.04-x64/basickestrel-coreclr
