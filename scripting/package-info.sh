package="code"

# Get version
dpkg -s $package | grep Version

# List installed packages
grep "apt install " /var/log/apt/history.log | awk '{print $4}'
