package="code"

# Get version
dpkg -s $package | grep Version

# List installed packages
grep "apt install " /var/log/apt/history.log | awk '{print $4}'

# Hold package from upgrade
sudo apt-mark hold $package

# List packages on hold
sudo dpkg --get-selections | grep "hold"
