REM function to add
REM check if driver is installed


REM add printer driver to store
pnputil.exe /add-driver ".\prnkmcl2.inf" 


## Set execution policy
powershell.exe -executionpolicy bypass -command "& '.\PS-Printer_install.ps1'"