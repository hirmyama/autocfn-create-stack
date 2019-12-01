#!/bin/bash

#entrypoint.sh
mkdir foo
cd foo

git clone $STACK_REPOSITORY .

# cdk deploy
# cdk destroy -f
sh -c "$COMMAND"
