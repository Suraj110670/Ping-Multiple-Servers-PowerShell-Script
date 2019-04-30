<#
	© 2018  		: BitPool 
	Script			: Ping Multiple servers provided in Text file IPList.txt
	Pre-requisite 	: Create a Text File IPList.txt
#>
$IPNodes = Get-Content "C:\temp\IPList.txt"
foreach ($IP in $IPNodes)

{ if (Test-Connection -IPAddress $IP -Count 1 -ErrorAction SilentlyContinue)
{ Add-Content c:\Temp\Up.txt "$IP" } 
else{ Add-Content c:\Temp\Down.txt "$IP" } } 