#!/bin/sh

export HOME=$ADTTMP
export PIP_DISABLE_PIP_VERSION_CHECK=1

pip3 install world
pip3 list
ls -ld $HOME/.local/lib/python3.*/site-packages/world-*.dist-info
pip3 uninstall -y world
pip3 list
