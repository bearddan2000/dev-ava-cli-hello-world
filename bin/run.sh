#! /bin/sh

FILE=hello && \
    gxc -O -exe -o $FILE $FILE.ss && \
    ./$FILE