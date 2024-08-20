#! /bin/bash

mkdir -p /work/build/
mkdir -p /work/gen/
cd /work/build/
_SQLCIPHER_="v4.6.0"
apt-get update
DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y openssl libssl-dev tclsh git autoconf gcc file pkgconf
rm -Rf sqlcipher/
git clone https://github.com/sqlcipher/sqlcipher
cd sqlcipher/
git checkout "$_SQLCIPHER_"
./configure  --disable-tcl --disable-shared --enable-static=yes --enable-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC -DSQLCIPHER_CRYPTO_OPENSSL"
make sqlite3.c

ls -hal sqlite3.h sqlite3ext.h sqlite3.c

cp sqlite3.h sqlite3ext.h sqlite3.c /work/gen/
