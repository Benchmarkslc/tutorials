# -*- mode: sh; -*-
# (rootdir)/.envrc : direnv configuration file
# see https://direnv.net/
# Grab the latest version of this file from
#      https://github.com/Falkor/dotfiles/blob/master/direnv/envrc
#
if [ -f ".python-version" ]; then
    pyversion=$(head .python-version)
else
    pyversion=2.7.14
fi
use python ${pyversion}

if [ -f ".python-virtualenv" ]; then
    pvenv=$(head .python-virtualenv)

    # Create the virtualenv if not yet done
    layout virtualenv ${pyversion} ${pvenv}
    # activate it
    layout activate ${pvenv}      #-${pyversion}
fi
