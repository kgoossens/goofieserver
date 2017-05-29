sudo docker stop plex
sudo docker rm plex
sudo docker create \
	--name=plex \
	--net=host \
	-e VERSION=latest \
	-e PGID=1000 -e PUID=1000 \
	-e TZ=Europe/Brussels \
	-v /storage/apps/plex:/config \
	-v /storage/tv:/data/tvshows \
	-v /storage/movies:/data/movies \
	-v /storage/transcode:/transcode \
	--restart="always" \
	linuxserver/plex
sudo docker start plex
