#!/bin/bash
# Clean machine-id for cloning.
# @author Adrian Heissler

# Clean machine-id for cloning
echo 'Cleaning machine id configuration...'
truncate -s 0 /etc/machine-id