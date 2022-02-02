#!/usr/bin/env bash

for testfile in ../sans-backend/tests/integration/new/drtsans/test_*.py;
do
    echo $testfile;
    bin/profile_test.sh $testfile new_drtsans;
    echo;
    echo;
done
