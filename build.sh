#!/bin/sh
set -euo pipefail

TITLE="Resume/CV of Mike Kramlich"
AUTHOR="Mike Kramlich"
VERSION=`date "+%Y %b %d"`
BASE=sw-eng-MikeKramlich

cat $BASE.src.md | sed "/\$VERSION/s//$VERSION/" > $BASE.md

cp $BASE.md $BASE.txt

echo "wc:"
wc $BASE.md

pandoc -s -f markdown -t epub3 -o $BASE.epub --metadata title="$TITLE" --metadata author="$AUTHOR" --metadata date="$VERSION" $BASE.md

pandoc -s -f markdown -t docx -o $BASE.docx --metadata title="$TITLE" --metadata author="$AUTHOR" --metadata date="$VERSION" $BASE.md

# TODO also gen PDF

