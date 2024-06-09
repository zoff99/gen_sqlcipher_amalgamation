#! /bin/bash

r1='https://github.com/sqlcipher/sqlcipher'
ver=$(git ls-remote --refs --sort='v:refname' --tags "$r1" \
    | cut --delimiter='/' --fields=3 | grep -v '\-' | tail --lines=1)

echo "$ver"

sed -i -e 's#_SQLCIPHER_=".*"#_SQLCIPHER_="'"$ver"'"#' runme.sh

