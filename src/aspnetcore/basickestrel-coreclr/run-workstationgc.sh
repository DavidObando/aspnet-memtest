#!/usr/bin/env bash

export COREHOST_SERVER_GC=0
dotnet restore
dotnet build --configuration release
cp -f ./workstationgc.json ./bin/release/netstandardapp1.5/ubuntu.14.04-x64/basickestrel-coreclr.runtimeconfig.json
./bin/release/netstandardapp1.5/ubuntu.14.04-x64/basickestrel-coreclr
