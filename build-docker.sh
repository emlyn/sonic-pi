#!/bin/sh

docker build -t sonic-pi - < Dockerfile

git clean -fdx

docker run -v $PWD:/sonic-pi sonic-pi bash -c "cd /sonic-pi/app/server/bin; ./compile-extensions.rb"
docker run -v $PWD:/sonic-pi sonic-pi bash -c "cd /sonic-pi/app/gui/qt;     ./rp-build-app"
