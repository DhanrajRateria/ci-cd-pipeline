$servicePath = "C:\Path\To\MyWindowsService.exe"
$serviceName = "MyWindowsService"

New-Service -Name $serviceName -BinaryPathName $servicePath -DisplayName $serviceName -StartupType Automatic
Start-Service -Name $serviceName