#!/usr/bin/env bash
#
# Update the upstream to a specific commit. If this fails then it may leave
# your working tree in a bad state. You can recover by using Git to reset:
# git reset --hard HEAD.
set -e

vsn=${1:-2.14.2}
out=${2:-upstream}

rm -rf $out
curl https://www.freedesktop.org/software/fontconfig/release/fontconfig-${vsn}.tar.gz | tar -xz
mv fontconfig-${vsn} $out
echo $vsn > ${out}.txt

# Lower file size

# Zig doesn't support symlinks
