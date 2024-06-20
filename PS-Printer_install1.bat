REM function to add
REM check if driver is installed


REM add printer driver to store
pnputil.exe /add-driver "C:\ServCoIT\Drivers\KMCL\prnkmcl2.inf" 


## Set execution policy
powershell.exe -executionpolicy bypass -command "& 'C:\ServCoIT\Drivers\KMCL\\PS-Printer_install.ps1'"