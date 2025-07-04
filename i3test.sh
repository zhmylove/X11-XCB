#!/bin/sh -e
# ./i3test.sh path_to_i3 |bash

echo "set -e"

i3="${1:-.../i3/}"
echo "cd $i3"
echo "git fetch"

cat <<'@'
TAG=$(git describe --abbrev=0 --tags)
for HEAD in "$TAG" origin/next ;do
    git checkout "$HEAD"
    mkdir build
    cd build
    meson ..
    ninja
    ./complete-run.pl
    cd ..
    rm -rf build
done
@
