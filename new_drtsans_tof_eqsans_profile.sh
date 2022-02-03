#!/usr/bin/env bash

for testfile in ../sans-backend/tests/integration/new/drtsans/tof/eqsans/test_*.py;
do
    echo $testfile;
    bin/profile_test.sh $testfile new_drtsans_tof_eqsans;
    echo;
    echo;
done
