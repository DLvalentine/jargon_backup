#!/bin/bash

# Remove old tar file
rm jargon.tar.gz

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
  
# Compress new tar file
tar -czvf jargon.tar.gz ./www.catb.org

# Cleanup
rm -rf ./www.catb.org
