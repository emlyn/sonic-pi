#!/bin/bash

docker build -t sonic-build - < Dockerfile

docker run -v $PWD:/sonic-pi sonicbuild bash -c "cd /sonic-pi/app/server/bin; ./compile-extensions.rb"
docker run -v $PWD:/sonic-pi sonicbuild bash -c "cd /sonic-pi/app/gui/qt; ./rp-build-app"