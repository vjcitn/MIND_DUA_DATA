#!/bin/sh
# replaces @ZIPBASE with useful HTML prefix for local browsing
sed -e "s_@ZIPBASE@_file://`pwd`_g" $1_nopath.html > $1_loc.html
