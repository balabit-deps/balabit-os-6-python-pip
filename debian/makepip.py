"""Make the /usr/bin/pip* scripts which honor the distro wheels."""

TEMPLATE = """\
#!{shebang}
# GENERATED BY DEBIAN

import sys

# Run the main entry point, similarly to how setuptools does it, but because
# we didn't install the actual entry point from setup.py, don't use the
# pkg_resources API.
from pip import main
if __name__ == '__main__':
    sys.exit(main())
"""

# This is a one-off script, so just do stupid simple argument parsing.

import sys

substitutions = dict(
    shebang=sys.argv[1],
    )

output_file = sys.argv[2]
with open(output_file, 'w', encoding='utf-8') as fp:
    print(TEMPLATE.format(**substitutions), end='', file=fp)
