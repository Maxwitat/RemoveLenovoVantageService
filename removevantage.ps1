#RemoveVantage
$LittleLogFile = "c:\windows\Logs\RemoveVantageService.log"
"Searching Vantage Service Installation" | Out-File $LittleLogFile

$UninstallString = Get-ChildItem -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall" | Get-ItemProperty | Where-Object {$_.DisplayName -like "Lenovo Vantage Service"} | Select-Object -ExpandProperty QuietUninstallString

if($UninstallString)
{
    "Calling $UninstallString " | Out-File $LittleLogFile -append
    cmd /c $UninstallString
}
else
{
    "No installation found" | Out-File $LittleLogFile -append
}

