#!/usr/bin/env bash

nasm -f elf64 "$1".asm -o "$2".o && ld "$2".o -o "$2" && ./"$2"
