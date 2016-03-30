#!/usr/bin/env bash

export COREHOST_SERVER_GC=1
dotnet restore
dotnet build --configuration release
cp -f ./servergc.json ./bin/release/netstandardapp1.5/ubuntu.14.04-x64/mvc-coreclr.runtimeconfig.json
./bin/release/netstandardapp1.5/ubuntu.14.04-x64/mvc-coreclr
