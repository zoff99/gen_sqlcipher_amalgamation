#! /bin/bash

cd /work/
mkdir -p /work/build/
mkdir -p /work/gen/
cd /work/build/
apt-get update
DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt install -y openssl libssl-dev tclsh git autoconf gcc file pkgconf
git clone https://github.com/sqlcipher/sqlcipher
cd sqlcipher/
git checkout "v4.5.7"
./configure  --disable-tcl --disable-shared --enable-static=yes --enable-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC -DSQLCIPHER_CRYPTO_OPENSSL"
make sqlite3.c

ls -hal sqlite3.h sqlite3ext.h sqlite3.c

cp sqlite3.h sqlite3ext.h sqlite3.c /work/gen/
