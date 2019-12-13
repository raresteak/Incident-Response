<#
.SYNOPSIS
  Create a scheduled task to generate 4688 event id with pattern TESTEVENT.
  Assumed WEF is already setup to centralized logger.
  Search centralized logger for phase TESTEVENT.

.OUTPUTS
  Scheduled task in MyTasks\TESTtask

.NOTES
  Version:        .1
  Author:         raresteak
  Creation Date:  12/10/2019
  Purpose/Change: Initial script development
  
.EXAMPLE
  powershell -executionpolicy bypass -f .\create_SIEM_scheduled_task.ps1
  SUCCESS: The scheduled task "MyTasks\TESTtask" has successfully been created.
#>
# Create a random time
$tthour=get-random -minimum 100 -maximum 124
$thour=[string]$tthour
$hour=$thour.substring(1)
$ttmin=get-random -minimum 100 -maximum 159
$tmin=[string]$ttmin
$min=$tmin.substring(1)
$time="${hour}:${min}"

# Create scheduled tas
iex "& SCHTASKS /RU SYSTEM /CREATE /SC DAILY /TN MyTasks\TESTtask /TR 'powershell -c echo -n TESTEVENT' /ST ${time}"
