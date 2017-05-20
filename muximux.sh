sudo docker create \
  --name=muximux \
  -v /storage/apps/muximux:/config \
  -e PGID=1000 -e PUID=1000  \
  -e TZ=Europe/Brussels \
  -p 8888:80 \
  linuxserver/muximux
