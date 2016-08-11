#!/bin/bash -x

pushd _raw

for f in *.jpg; do
  filename="${f%%.*}"
  convert -thumbnail 280x280 "$f" "../_assets/images/$filename-thumb.png"
done

for f in *.jpg; do
  filename="${f%%.*}"
  convert -resize 1024x1024 "$f" "../_assets/images/$filename.jpg"
done

popd
