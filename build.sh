#!/usr/bin/env sh
cd qmk
docker run --rm -it -v $PWD/qmk_firmware:/qmk_firmware qmkfm/base_container /bin/bash -c 'cd /qmk_firmware && make crkbd:ha1t'
