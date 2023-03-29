Get-Help -Online Get-History
Get-History | Where-Object {$_.CommandLine -like "*Service*"}