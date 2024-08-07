#!/bin/sh
set -e

TITLE="Resume/CV of Mike Kramlich"
AUTHOR="Mike Kramlich"
VERSION="2024 August 7"
BASE=sw-eng-MikeKramlich

cp $BASE.md $BASE.txt

echo "wc:"
wc $BASE.md

pandoc -s -f markdown -t epub3 -o $BASE.epub --metadata title="$TITLE" --metadata author="$AUTHOR" --metadata date="$VERSION" $BASE.md

pandoc -s -f markdown -t docx -o $BASE.docx --metadata title="$TITLE" --metadata author="$AUTHOR" --metadata date="$VERSION" $BASE.md

# TODO also gen PDF

