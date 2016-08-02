#!/bin/bash -ex

GH_URL="https://${GH_TOKEN}@github.com/musical-friends/musical-friends.github.io"
TEMPDIR="$(mktemp -d /tmp/website.XXX)"

echo "Cloning master branch..."
git clone --branch master --single-branch --depth 1 "$GH_URL" "$TEMPDIR"

echo "Copying site..."
mkdir "$TEMPDIR/demo"
cp -r _site/* "$TEMPDIR/demo"

pushd "$TEMPDIR" >/dev/null
git add --all .

if git diff-index --quiet HEAD; then
  echo "No changes detected."
else
  echo "Committing changes..."
  git commit --message "Update site"
  echo "Pushing to master..."
  git push origin master
fi

popd >/dev/null

rm -rf "$TEMPDIR"
exit 0
