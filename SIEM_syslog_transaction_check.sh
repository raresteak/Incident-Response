#!/bin/bash
# SIEM_syslog_transaction_check.sh
# Author: raresteak
# Usage: Run script at midnight everyday from cron on every server in enterprise to receive a test message to your SIEM at a random 
# time throughout the day.  The purpose of the random time is so your SIEM doesn't get overloaded by a sudden in rush 
# should all end points send a message at the same time.
# Requirements: syslog forwarding is already setup to SIEM

# Change to suit your needs
MESSAGE="ENDPOINT SIEM CHECKIN"

# Generate a random time
HOUR=$(echo $(($RANDOM % 124)) )
while [ $HOUR -lt "100" ]; do
  HOUR=$(echo $(($RANDOM % 124)) )
done
RHOUR=$(echo $HOUR | sed 's/^1//g')

MIN=$(echo $(($RANDOM % 160)) )
while [ $MIN -lt "101" ]; do
  MIN=$(echo $(($RANDOM % 160)) )
done
RMIN=$(echo $MIN | sed 's/^1//g')

RANDOMTIME=$(echo "${RHOUR}:${RMIN}")

# Send message
echo "/usr/bin/logger '${MESSAGE}'" | /usr/bin/at -M ${RANDOMTIME}
