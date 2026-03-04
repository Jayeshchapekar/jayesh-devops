#!/bin/bash
#
<<help 
this shell scripts will take periodic backups

eg
./backup.sh <source> <dest>
help


src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r  "$dest/backup-$timestamp.zip" $src >/dev/null

aws s3 sync "$dest" s3://tws-backups-j

echo "baackup completed and uploaded to s3"

