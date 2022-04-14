# Examples: https://crontab.guru/examples.html

# Create task
echo "@reboot script.sh" | crontab

# Remove task
crontab -r

# List tasks
crontab -l

# Open in editor
crontab -e
