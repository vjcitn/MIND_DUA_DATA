#!/bin/sh
# removes absolute path information and replaces with @ZIPBASE@ for later substitution
sed -e "s_file://`pwd`_@ZIPBASE@_g" $1.html > $1_nopath.html
