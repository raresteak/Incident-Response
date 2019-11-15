# Incident-Response
Tools related to Incident Response Activities

The live collection scripts were inspired by the book Incident Response 3rd ed by J.T. Luttgens, M. Pepe, K. Mandia

* EL_IR_Live_Collection.sh

Used to collect forensic information from a live linux (RHEL CENTOS, and variants based on RHEL) system prior to taking other incident response steps.  

* AIX_IR_Live_Collection.sh

Used to collect forensic information from a live AIX system prior to taking other incident response steps. 

* SIEM_syslog_transaction_check.sh

Used to implement a synthetic transaction for Nix servers to send a message to your SIEM every day to ensure the system is still online.  Daily review your SIEM for the total count of test messages received.  Drops in total count indicate systems or networks are having issues.  Run the script out of cron at 23:59 to generate a random time to send the test message.  Give script to sysadmin to include in golden images or post install procedures.
