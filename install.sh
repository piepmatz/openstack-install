#!/bin/bash

(
  cd "`dirname $0`/installation/"
  env time ./install.sh $*
)
