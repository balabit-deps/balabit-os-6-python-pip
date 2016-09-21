#!/bin/sh

export HOME=$ADTTMP
export PIP_DISABLE_PIP_VERSION_CHECK=1

cd $HOME
mkdir stupid
cat > stupid/setup.py <<EOF
from setuptools import setup

setup(
    name='stupid',
    version='0.1',
    extras_require = {
        'testing': [],
        }
    )
EOF

cd stupid
pip3 install -e .[testing]
