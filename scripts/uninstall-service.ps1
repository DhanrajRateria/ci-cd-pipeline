param (
    [string]$ServiceName = "MyWindowsService"
)

Write-Host "Stopping the service if it is running..."
Stop-Service -Name $ServiceName -Force -ErrorAction SilentlyContinue

Write-Host "Removing service: $ServiceName"
sc.exe delete $ServiceName

# Verify the service removal
try {
    Get-Service -Name $ServiceName -ErrorAction Stop
    Write-Error "Service $ServiceName still exists. Removal failed."
} catch {
    Write-Host "Service $ServiceName has been removed successfully."
}