#!/usr/bin/env bash

# default binary
mantidpython='/home/8cz/Github/mantid/build/bin/mantidpython'
mantidprofiler='/home/8cz/Workbench/SANS/mantid-profiler/mantid-profiler.py'

# parse input
test_script=$1
test_name="$(basename -s .py $test_script)"
save_dir=$2

# profile the test
$mantidpython -m pytest $test_script & python $mantidprofiler $!

# update the profile name
mv profile.html ${save_dir}/profile_${test_name}.html
