sudo docker stop sonarr
sudo docker rm sonarr
sudo docker create \
    --name sonarr \
    -p 8989:8989 \
    -e PUID=1000 -e PGID=1000    \
    -v /storage/apps/sonarr:/config \
    -v /storage/tv:/tv \
    -v /storage/downloads:/downloads \
    --restart="always" \
    linuxserver/sonarr
sudo docker start sonarr
