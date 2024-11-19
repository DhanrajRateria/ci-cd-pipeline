param (
    [string]$SolutionPath = ".\src\MyWindowsService.sln",
    [string]$Configuration = "Release"
)

Write-Host "Starting build process for solution: $SolutionPath"
dotnet build $SolutionPath --configuration $Configuration

if ($LASTEXITCODE -eq 0) {
    Write-Host "Build succeeded!"
} else {
    Write-Error "Build failed with exit code $LASTEXITCODE"
    exit $LASTEXITCODE
}