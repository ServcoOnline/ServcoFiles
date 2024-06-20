## Powershell 

Add-PrinterDriver -Name "KONICA MINOLTA PS Color Laser Class Driver"  
Add-Printer -Name "PS-Printer" -DriverName "KONICA MINOLTA PS Color Laser Class Driver" -PortName "FILE:" 

mkdir c:\temp
New-Item c:\temp\PS-Printer.log -ItemType file


## Change to A4  

# Specify the printer name.
$strPrinterName = "PS-Printer"

# Specify the desired paper size.  Acceptable values are letter, legal, A5, A4, etc ...
$strDesiredPaperSize = "A4"

$objPrinter = Get-PrintConfiguration -PrinterName $strPrinterName 
$strPaperSize = $objPrinter.PaperSize

If ($strPaperSize -ne $strDesiredPaperSize)
    {
    Set-PrintConfiguration -PrinterName $strPrinterName -PaperSize $strDesiredPaperSize
    
    $objPrinter = Get-PrintConfiguration -PrinterName $strPrinterName
    $strPaperSizeUpdated = $objPrinter.PaperSize
    $strPaperSizeUpdated

    Write-Host "The paper size was changed as follows:
        From:  $strPaperSize
        To:  $strPaperSizeUpdated"
    }
    Else
    {
    Write-Host "The paper size was not changed because it was already set to $strDesiredPaperSize."
    }