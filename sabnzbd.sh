sudo docker create --name=sab \
  -v /storage/apps/sabnzbd/config:/config \
  -v /storage/downloads:/downloads \
  -v /storage/incomplete-downloads:/incomplete-downloads \
  -v /storage/tv:/downloads/tv \
  -v /storage/movies:/downloads/movies \
  -e PGID=20 -e PUID=501 \
  -e TZ=Europe/Brussels \
  -p 8080:8080 -p 9090:9090 \
  linuxserver/sabnzbd
