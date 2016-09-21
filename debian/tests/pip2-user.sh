#!/bin/sh

export HOME=$ADTTMP
export PIP_DISABLE_PIP_VERSION_CHECK=1

pip install world==3.1
pip list
ls -ld $HOME/.local/lib/python2.*/site-packages/world-*.dist-info
pip uninstall -y world
pip list
