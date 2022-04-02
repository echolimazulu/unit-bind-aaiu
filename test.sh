#!/bin/sh

set -ex

docker build -t aaiu-build .
docker run -d --name aaiu-test aaiu-build
