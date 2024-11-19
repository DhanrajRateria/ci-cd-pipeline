param (
    [string]$ServiceName = "MyWindowsService"
)

Write-Host "Stopping service: $ServiceName"
Stop-Service -Name $ServiceName -Force

# Verify the service status
$status = (Get-Service -Name $ServiceName).Status
if ($status -eq "Stopped") {
    Write-Host "Service $ServiceName has been stopped successfully."
} else {
    Write-Error "Failed to stop the service $ServiceName. Current status: $status"
}