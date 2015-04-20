#ps1_sysnative

function Create-StaticVHD {
    Param($staticVhdPath=".\vhds\static.vhd")

    # Create static VHD
    if (Test-Path $staticVHDPath) {
        Remove-Item $staticVHDPAth
    }
    New-VHD -Path $staticVhdPath -SizeBytes 64MB -Fixed
}


Create-StaticVHD