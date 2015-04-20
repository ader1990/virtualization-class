#ps1_sysnative

function Increase-DynamicVHD {
    Param($dynamicVhdPath=".\vhds\dynamic.vhdx")

    Resize-VHD -Path $dynamicVhdPath -SizeBytes 13GB
}


Increase-DynamicVHD









