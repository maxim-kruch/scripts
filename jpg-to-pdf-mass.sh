#!/bin/zsh

# Syntax: jpg-to-pdf-mass.zsh $DATEI_NAME

if [ -z $1 ]
then
	echo "Datei angeben!"
	exit 0
else

for i in *.jpg; do convert "$i" "${i%.*}.pdf"; done
gs -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="$1.pdf" *.pdf
mv "$1.pdf" "$1.pdf.old"
rm -drf *.pdf
mv "$1.pdf.old" "$1.pdf"
