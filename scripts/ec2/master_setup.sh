#!/bin/bash

tmpdir=/tmp/ec2-setup

#set -o verbose

#rm -rf $tmpdir
#mkdir $tmpdir

#./01_run_instance.sh > $tmpdir/01_run_instance-out.json
instanceid=`cat $tmpdir/01_run_instance-out.json|python -c "import sys, json; print(json.load(sys.stdin)['Instances'][0]['InstanceId'])"`
echo "instanceid=$instanceid"