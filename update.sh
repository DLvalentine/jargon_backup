#!/bin/bash
# Grab the latest version of the jargon_file, and if successful, replace the old one

wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --domains catb.org \
     --no-parent \
        http://www.catb.org/jargon/


rm -rf www.catb.org/jargon/oldversions
