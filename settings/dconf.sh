file="settings.ini"

# Save settings
dconf dump / > $file

# Load saved settings
dconf load / < $file
