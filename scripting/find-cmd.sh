path=$(pwd)

# Print name all files
find $path -type f -exec basename {} \;

# Print name all dirs
find $path -type d -exec basename {} \;

# Find all txt files
find $path -type f -name "*.txt"

# Find all empty files
find $path -type f -empty

# Find all hidden files
find $path -type f -name ".*"

# Execute all executable files
find $path -type f -executable -exec {} \;

# Find all 666 permission files and set permissions to 644
find $path -type f -perm 666 -exec chmod 644 {} \;

# Delete all files larger than 552MB
find $path -type f -size +552M -exec rm -f {} \;
