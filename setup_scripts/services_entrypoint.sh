#!/bin/bash
set -e

# This script will up cassandra, execute custom script and run python service

sh /usr/sbin/cassandra -R -p /var/run/cassandra.pid > cassandra.out 

echo "Waiting for Cassandra to Up"
while ! cqlsh -e 'describe cluster' ; do
    sleep 3
done
echo "Cassandra services are up !!"

cqlsh -f /shared/setup_scripts/cassandra_setup.cql

python /shared/setup_scripts/test_matrices.py > matrics_log.out;