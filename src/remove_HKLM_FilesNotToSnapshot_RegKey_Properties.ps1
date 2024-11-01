# Delete FilesNotToSnapshot\*Outlook* Registry Key Properties
Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\BackupRestore\FilesNotToSnapshot" -Name "*OutlookOST*" -Verbose -Force

# Delete FilesNotToSnapshot\*Office* Registry Key Properties
Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\BackupRestore\FilesNotToSnapshot" -Name "*Office*" -Verbose -Force
