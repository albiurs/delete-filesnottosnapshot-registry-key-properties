# Delete FilesNotToSnapshot\*Outlook* Registry Key Properties 

Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\BackupRestore\FilesNotToSnapshot" -Name "*Outlook*" -Verbose -Force 

  

# Delete FilesNotToSnapshot\*Office* Registry Key Properties 

Remove-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\BackupRestore\FilesNotToSnapshot" -Name "*Office*" -Verbose -Force 
