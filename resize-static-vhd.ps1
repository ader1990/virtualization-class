
    # Increase size static VHD
    Resize-VHD -Path $staticVhdPath -SizeBytes 128MB

    # Decrease size static VHD
    Resize-VHD -Path $staticVhdPath -SizeBytes 64MB
