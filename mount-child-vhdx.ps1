#ps1_sysnative

function Mount-DynamicVHD {
    Param($vhd=".\vhds\child.vhdx")

  Mount-VHD -Path $vhd -Passthru
}

Mount-DynamicVHD