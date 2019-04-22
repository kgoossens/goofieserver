sudo docker stop radarr
sudo docker rm radarr

docker create \
  --name=radarr \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Brussels \
  -p 7878:7878 \
  -v /storage/apps/radarr:/config \
  -v /storage/movies:/movies \
  -v /storage/downloads:/downloads \
  --restart unless-stopped \
  linuxserver/radarr

sudo docker start radarr