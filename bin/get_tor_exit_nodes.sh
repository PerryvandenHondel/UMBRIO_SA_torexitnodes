#! /bin/bash

## GET_TOR_EXIT_NODES.SH

## Add a header to the CSV file and clear out the old results
echo tor_exit_node_ip > $SPLUNK_HOME/etc/apps/UMBRIO_SA_torexitnodes/lookups/tor_exit_node.csv

## Download the list of exit node IP addresses and append them to the CSV.
## Do not use a schedule smaller then 1 hour; otherwise you will be blocked!
curl -k https://www.dan.me.uk/torlist/?exit >> $SPLUNK_HOME/etc/apps/UMBRIO_SA_torexitnodes/lookups/tor_exit_node.csv

## EOS