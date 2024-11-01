# Define the registry key path
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\BackupRestore\FilesNotToSnapshot"

# Define an array of value names to be deleted
$valueNames = @("ModernOutlookOAB", "ModernOutlookOST", "OfficeODCNew", "OutlookOAB", "OutlookOST")

# Check if the registry key exists
if (Test-Path $registryPath) {
    # Loop through each value in the array
    foreach ($valueName in $valueNames) {
        # Check if the specified value exists within the key
        $valueExists = Get-ItemProperty -Path $registryPath -Name $valueName -ErrorAction SilentlyContinue

        if ($valueExists) {
            # If the value exists, delete it
            Remove-ItemProperty -Path $registryPath -Name $valueName -Force -Verbose
            Write-Output "Value '$valueName' has been successfully deleted from '$registryPath'."
        }
        else {
            # Value does not exist within the key
            Write-Output "Value '$valueName' does not exist in '$registryPath'. No action taken for this value."
        }
    }
}
else {
    # Registry key does not exist
    Write-Output "Registry key '$registryPath' does not exist. No action taken."
}

