sudo docker stop sonarr
sudo docker rm sonarr
sudo docker create \
    --name sonarr \
    -p 8989:8989 \
    -e PUID=501 -e PGID=20    \
    -v /storage/apps/sonarr:/config \
    -v /storage/tv:/tv \
    -v /storage/downloads:/downloads \
    --restart="always" \
    linuxserver/sonarr
sudo docker start sonarr
