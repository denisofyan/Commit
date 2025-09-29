#!/bin/bash
cd /workspaces/$(basename $(pwd))

for i in {1..500}
do
  echo "Commit ke-$i pada $(date)" >> log.txt
  git add .
  git commit -m "auto commit ke-$i"
  sleep 1   # jeda 1 detik supaya commit benar-benar berurutan
done

git push origin main
