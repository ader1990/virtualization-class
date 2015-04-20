
function Show-MergeVHD {
    Param(
        $childPath="vhds\child.vhdx",
        $destinationPath="vhds\dynamic.vhdx"
    )

    $destinationCopy = "vhds\childmerged.vhdx"
    Copy-Item $destinationPath $destinationCopy -Force -ErrorAction SilentlyContinue
    Set-VHD -Path $childPath -ParentPath $destinationCopy
    Merge-VHD -Path $childPath -DestinationPath $destinationCopy
}


show-mergevhd