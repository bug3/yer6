#!/bin/bash

port=8128
file="index.html"
contentType="text/html"

wordCount() {
    echo $(wc -c < $1)
}

join() {
    local separator="$1"
    shift
    local array="$1"
    shift
    printf "%s" "$array" "${@/#/$separator}"
}

body() {
    echo "\r\n\r\n\n$(cat $file)"
}

while true; do
    headers=(
        "HTTP/1.1 200 OK"
        "Content-Length: $(wordCount $file)"
        "Content-Type: $contentType"
    )

    echo -ne "$(join "\r\n" "${headers[@]}")$(body)" | nc -l localhost $port > /dev/null 2>&1
done
