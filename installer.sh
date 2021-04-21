#!/usr/bin/env bash

## Clone the repo
git clone https://github.com/paulodiniz/git-reblame.git --depth=1 || {
  echo >&2 "Clone failed with $?"
  exit 1
}

cd git-reblame || exit

make install || {
  echo >&2 "Clone failed with $?"
  exit 1
}

cd ..

rm -rf git-reblame
