#!/bin/bash

# Syntax: jpg-to-pdf-mass.zsh $DATEI_NAME

if [ -z $1 ]; then
	pdf_file="output.pdf"
else
	pdf_file=$1
fi

for i in *.jpg; do convert "$i" "${i%.*}.pdf"; done
gs -dBATCH -dNOPAUSE -sDEVICE=pdfwrite -sOutputFile="${pdf_file}" *.pdf
mv "${pdf_file}" "${pdf_file}.save"
rm -drf *.pdf
mv "${pdf_file}.save" "${pdf_file}"
