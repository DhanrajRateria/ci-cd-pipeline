param (
    [string]$SourcePath,
    [string]$DestinationPath
)

Write-Host "Stopping Service..."
Stop-Service -Name MyWindowsService -Force
Write-Host "Copying new binaries..."
Copy-Item -Path $SourcePath -Destination $DestinationPath -Force
Write-Host "Starting Service..."
Start-Service -Name MyWindowsService