#!/bin/bash

for f in **/Makefile; do
    make -C "$(dirname "$f")"
done
