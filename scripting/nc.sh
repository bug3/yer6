port=8128

# TCP
nc -l $port
nc localhost $port # Client

# UDP
nc -u -l $port
nc -u localhost $port # Client
