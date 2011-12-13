#!/bin/bash

for a in /usr/local/lib/io/addons/*
do
  b="`basename "$a"`"
  o="$a/_build/dll/libIo$b.dll"
  cp "$a/_build/dll/cygIo$b.dll" "$o"
  chmod a+x "$o"
  chmod a+x "$a/_build/dll/cygIo$b.dll"
done

cp /usr/local/lib/io/addons/*/_build/dll/*.dll /usr/local/lib/
