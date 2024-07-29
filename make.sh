#!/bin/sh
set -e

TITLE="Resume/CV of Mike Kramlich"
COVER=cover.png
AUTHOR="Mike Kramlich"
VERSION="2024 July 21"
BASE=sw-eng-MikeKramlich

cp $BASE.md $BASE.txt

echo "wc:"
wc $BASE.md

pandoc -s -f markdown -t epub3 -o $BASE.epub --metadata title="$TITLE" --metadata author="$AUTHOR" --metadata date="$VERSION" --epub-cover-image=$COVER $BASE.md

pandoc -s -f markdown -t docx -o $BASE.docx --metadata title="$TITLE" --metadata author="$AUTHOR" --metadata date="$VERSION" --epub-cover-image=$COVER $BASE.md

