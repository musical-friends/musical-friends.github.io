#!/bin/bash
##
# Makes a shallow clone for gh-pages branch, copies the new docs, adds, commits and pushes 'em.
#
# Requires the environment variable GH_TOKEN to be set to a valid GitHub-api-token.
#
# Usage:
# ./deploy-gh-pages.sh <project-version>
#
# project-version    The version folder to use in gh-pages
##
set -o errexit -o nounset

PROJECT_VERSION=$1

GH_URL="https://${GH_TOKEN}@github.com/musical-friends/musical-friends.github.io"
TEMPDIR="$(mktemp -d /tmp/master.XXX)"

echo "Cloning master branch..."
git clone --branch master --single-branch --depth 1 "$GH_URL" "$TEMPDIR"

echo "Copying site..."
cp -r _site/* "$TEMPDIR"

pushd "$TEMPDIR" >/dev/null
git add --all .

if git diff-index --quiet HEAD; then
  echo "No changes detected."
else
  echo "Committing changes..."
  #git commit --message "Update site"
  echo "Pushing to master..."
  #git push origin master
fi

popd >/dev/null

rm -rf "$TEMPDIR"
exit 0
