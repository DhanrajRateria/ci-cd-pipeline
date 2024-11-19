param (
    [string]$ServiceName = "MyWindowsService"
)

Write-Host "Starting service: $ServiceName"
Start-Service -Name $ServiceName

# Verify the service status
$status = (Get-Service -Name $ServiceName).Status
if ($status -eq "Running") {
    Write-Host "Service $ServiceName is running successfully."
} else {
    Write-Error "Failed to start the service $ServiceName. Current status: $status"
}