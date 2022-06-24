Splunk Search App for Tor Exit Nodes IP in a CSV lookup table

# SOURCE OF TOR EXIT NODE LIST
Uses the Tor Exit Nodes list from
https://www.dan.me.uk/torlist

# SCHEDULE
Runs the script every 7 minutes past every 2 hours.
00:07, 02:07, 04:07, etc.

Do not use a schedule with a time shorter then a hour; otherwise your IP will be blocked.

# EXAMPLE USE
```
index="index_with_ip" [ | inputlookup tor_exit_node.csv | rename tor_exit_node_ip as dest_ip | format ]
| stats count by dest_ip
| rename count as "TOR Exit Node Count"
```

Provides a list of IP's that are on your logs and are marked as a Tor Exit Node IP. Connections to Tor Exit Nodes can be used for Command & Control connections inside your network.
