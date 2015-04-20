#ps1_sysnative

function Create-DynamicVHD {
    Param($dynamicVhdPath=".\vhds\dynamic.vhdx")

    # Create static VHD
    if (Test-Path $dynamicVHDPath) {
        Remove-Item $dynamicVHDPAth
    }
    New-VHD -Path $dynamicVhdPath -SizeBytes 10GB -Dynamic
}


Create-DynamicVHD