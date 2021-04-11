@echo off
printf "Internal External\n"
powershell -command "(Get-CimInstance Win32_Battery).EstimatedChargeRemaining" | tr \n \t
