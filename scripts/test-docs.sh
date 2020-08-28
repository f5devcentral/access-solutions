#!/usr/bin/env bash

set -e
set -x

echo "Building docs with Sphinx"
make clean
make html

echo "Checking grammar and style"
write-good `find access-solutions -not \( -path access-solutions/drafts -prune \) -name '*.rst'` --so --no-illusion --thereIs --cliches

#echo "Checking links"
#make linkcheck