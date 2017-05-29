sudo docker stop plexpy
sudo docker rm plexpy
sudo docker create --name=plexpy \
  -v /storage/apps/plexpy/config:/config \
  -v /storage/apps/plexpy/logs:/logs:ro \
  -e PGID=20 -e PUID=501  \
  -e TZ=Europe/Brussels \
  -p 8181:8181 \
  --restart="always" \
  linuxserver/plexpy
sudo docker start plexpy
