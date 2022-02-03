#!/usr/bin/env bash

for testfile in ../sans-backend/tests/integration/new/drtsans/mono/biosans/test_*.py;
do
    echo $testfile;
    bin/profile_test.sh $testfile new_drtsans_mono_biosans;
    echo;
    echo;
done
