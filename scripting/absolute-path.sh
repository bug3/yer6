# To get the absolute dir of the executing script
getAbsoluteDir() {
    SCRIPT_PATH="${BASH_SOURCE}"

    while [[ -L "${SCRIPT_PATH}" ]]; do
        TARGET="$(readlink "${SCRIPT_PATH}")"

        if [[ "${TARGET}" == /* ]]; then
            SCRIPT_PATH="$TARGET"
        else
            SCRIPT_PATH="$(dirname "${SCRIPT_PATH}")/${TARGET}"
        fi
    done

    echo $(dirname $(realpath $SCRIPT_PATH))
}

# Get dir in one line
dir1line=$(cd $(dirname ${BASH_SOURCE[0]}) > /dev/null 2>&1 && pwd)

# Get dir in one line for sh
dir1lineSH=$(cd $(dirname $(readlink -f $0)) > /dev/null 2>&1 && pwd)

# For sh and OSX
realPath() {
    [ $1 = "/*" ] && echo "$1" || echo "$PWD/${1#./}"
}

path=$(realPath $0)
dir=$(dirname $path)
