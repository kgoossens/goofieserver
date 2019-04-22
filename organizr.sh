sudo docker stop organizr
sudo docker rm organizr
sudo docker create \
  --name=organizr \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Brussels \
  -p 80:80 \
  -v /storage/apps/organizr:/config \
  --restart unless-stopped \
  linuxserver/organizr
sudo docker start organizr

