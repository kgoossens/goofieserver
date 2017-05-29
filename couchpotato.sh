sudo docker stop couchpotato
sudo docker rm couchpotato
sudo docker create \
    --name=couchpotato \
    -v /storage/apps/couchpotato:/config \
    -v /storage/downloads:/downloads \
    -v /storage/movies:/movies \
    -e PGID=1000 -e PUID=1000 \
    -e TZ=Europe/Brussels \
    -p 5050:5050 \
    --restart="always" \
    linuxserver/couchpotato
sudo docker start couchpotato
