sudo docker stop sab
sudo docker rm sab
sudo docker create --name=sab \
  -v /storage/apps/sabnzbd/config:/config \
  -v /storage/downloads:/downloads \
  -v /storage/incomplete-downloads:/incomplete-downloads \
  -e PGID=20 -e PUID=501 \
  -e TZ=Europe/Brussels \
  -p 8080:8080 -p 9090:9090 \
  --restart="always" \
  linuxserver/sabnzbd
sudo docker start sab
