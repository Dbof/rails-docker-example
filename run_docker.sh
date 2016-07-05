id=$(docker ps -q -f ancestor=postgres)
id2=$(docker ps -q -f ancestor=rails)
if [ -z "$id" ] 
then
    echo "[!] Error: Start the postgres image before running django! Try: docker run -d postgres"
    exit 1
fi

if [ -z "$id2" ]
then
    clear
    docker run --link $id:db -v "$(pwd)"/src:/code -p 3000:3000 -it rails-docker /bin/bash
else
    clear
    echo "[!] Warning: Instance already running! Connecting to existing one..."
    docker exec -it $id2 /bin/bash
fi
