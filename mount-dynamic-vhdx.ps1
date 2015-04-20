#ps1_sysnative

function Mount-DynamicVHD {
    Param($vhd=".\vhds\dynamic.vhdx")

  Mount-VHD -Path $vhd -Passthru | `
  Initialize-Disk -Passthru | `
  New-Partition -AssignDriveLetter -UseMaximumSize | `
  Format-Volume -FileSystem NTFS -Confirm:$false -Force
}

Mount-DynamicVHD