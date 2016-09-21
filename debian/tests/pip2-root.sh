#!/bin/sh

export PIP_DISABLE_PIP_VERSION_CHECK=1

pip install world==3.1
pip list
ls -ld /usr/local/lib/python2.*/dist-packages/world-*.dist-info
pip uninstall -y world
pip list
