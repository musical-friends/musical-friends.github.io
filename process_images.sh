#!/bin/bash -x

rm -rf _assets/images
mkdir -p _assets/images

pushd _raw

for f in *.jpg; do
  filename="${f%%.*}"
  convert -thumbnail 200x200 "$f" "../_assets/images/$filename-thumb.png"
done

for f in *.jpg; do
  filename="${f%%.*}"
  convert -resize 1024x1024 "$f" "../_assets/images/$filename.jpg"
done

popd
