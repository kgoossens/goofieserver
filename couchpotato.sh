sudo docker stop couchpotato
sudo docker rm couchpotato
sudo docker create \
    --name=couchpotato \
    -v /storage/apps/couchpotato:/config \
    -v /storage/downloads:/downloads \
    -v /storage/movies:/movies \
    -e PGID=20 -e PUID=501 \
    -e TZ=Europe/Brussels \
    -p 5050:5050 \
    --restart="always" \
    linuxserver/couchpotato
sudo docker start couchpotato
