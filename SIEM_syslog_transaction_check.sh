#!/bin/bash
# SIEM_syslog_transaction_check.sh
# Author: raresteak
# Usage: Run script at _midnight_ everyday from cron on every server in enterprise to send a test message to your SIEM at a random 
# time (00:01 to 23:59) throughout the day using _at_ and logger.  The purpose of the random time is so your SIEM doesn't get overloaded 
# by a sudden inrush should all end points send a message at a static time.
# The reason I'm using _at_ here is because _at_ jobs survive reboots.  Whereas a script that is run at midnight that sleeps a random
# number of seconds before sending the alert message would not surive a reboot.
# Requirements: At installed, and syslog forwarding ( *.info ) to your SIEM or central syslog collector.

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
