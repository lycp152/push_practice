#!/bin/bash

set -eu

RED='\033[0;31m'
NC='\033[0m' # No Color

# check if there is at least one remote branch.
remote_branch_count=$(git branch -r | grep origin | wc -l)

if [ $(( remote_branch_count )) -ge 1 ]; then
    # do nothing
    :
else
    echo -e "${RED}You should push a branch.${NC}"
    exit 1
fi

echo "ok"
exit 0
