#!/bin/bash
# Grab the latest version of the jargon file site

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
        
