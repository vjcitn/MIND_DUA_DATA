# MIND_DUA_DATA
tools for MIND DUA data archive

A zip archive of folders will be distributed.  The R markdown files in this
repo can be processed to HTML to help navigate the folder contents

A Makefile is available

Given a set of `*_nopath.html` files in the root of the zip archive (so that, e.g.,
the folder Blood_Pressure is just subordinate to what we call the root),
use
```
make locate
```
to produce a new set of `*_loc.html` files that have suitable links
for browsing contents of the folders.

The MIND_ARCHIVE.html will in turn navigate the `*_loc.html` files.
