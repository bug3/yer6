# Examples: https://crontab.guru/examples.html

# Create task
echo "@reboot script.sh" | crontab

# Remove task
crontab -r

# List tasks
crontab -l

# Open in editor
crontab -e

# Exec all crons
echo "* * * * * find /home/bug3/yer6/crons -type f -executable -exec {} \;" | crontab
