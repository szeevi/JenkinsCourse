#!/bin/bash

argument=$1

python ./checkUserName.py $argument
/bin/bash ./reverse.sh $argument
