<<<<<<< HEAD
@echo off
printf "Internal External\n"
powershell -command "(Get-CimInstance Win32_Battery).EstimatedChargeRemaining" | tr \n "\t  "
=======
@echo off
printf "Internal External\n"
powershell -command "(Get-CimInstance Win32_Battery).EstimatedChargeRemaining" | tr \n \t
>>>>>>> 7a7964ad0300a2585c0bcab9cf9367e6be5b2e81
