#!/bin/sh

tempdir=$(mktemp -d /tmp/example.XXXX)
echo "Temping to $tempdir ..."
docker cp festive_mcclintock:/data/worlds "$tempdir"
docker cp festive_mcclintock:/data/server.properties "$tempdir"

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
zipfile="festive_mcclintock-backup-$timestamp.zip"
echo "Zipping to ./$zipfile"
zip -r "./$zipfile" "$tempdir"

echo "$ rclone copy"

rclone copy $zipfile s3-docker-volumes:docker-volumes-backups-25b8ee2c \
  --progress \
  --config "rclone.conf" \
  "$@"

echo "$ rm $zipfile"
rm $zipfile
echo ""
