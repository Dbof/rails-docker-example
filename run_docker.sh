id2=$(docker ps -q -f ancestor=rails-docker)

if [ -z "$id2" ]
then
    clear
    docker run -v "$(pwd)"/src:/code -p 3000:3000 -it rails-docker /bin/bash
else
    clear
    echo "[!] Warning: Instance already running! Connecting to existing one..."
    docker exec -it $id2 /bin/bash
fi
