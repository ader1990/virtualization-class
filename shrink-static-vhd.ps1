#ps1_sysnative

function Increase-StaticVHD {
    Param($staticVhdPath=".\vhds\static.vhd")

    Resize-VHD -Path $staticVhdPath -SizeBytes 32MB
}


Increase-StaticVHD









