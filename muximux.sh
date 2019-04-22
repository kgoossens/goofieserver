sudo docker stop muximux
sudo docker rm muximux
#sudo docker create \
#  --name=muximux \
#  -v /storage/apps/muximux:/config \
#  -e PGID=1000 -e PUID=1000  \
#  -e TZ=Europe/Brussels \
#  -p 80:80 \
#  --restart="always" \
#  linuxserver/muximux
#sudo docker start muximux
