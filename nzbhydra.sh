sudo docker stop hydra
sudo docker rm hydra
sudo docker create --name=hydra \
	-v /storage/apps/hydra:/config \
	-v /storage/downloads:/downloads \
	-e PGID=1000 -e PUID=1000 \
	-e TZ=Europe/Brussels \
	-p 5075:5075 linuxserver/hydra
sudo docker start hydra
