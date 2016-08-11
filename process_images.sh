#!/bin/bash -x

rm -rf _assets/photos
mkdir -p _assets/photos

pushd _raw

for f in *.jpg; do
  filename="${f%%.*}"
  convert -thumbnail 200x200 "$f" "../_assets/photos/$filename-thumb.png"
done

for f in *.jpg; do
  filename="${f%%.*}"
  convert -resize 1024x1024 "$f" "../_assets/photos/$filename.jpg"
done

popd
