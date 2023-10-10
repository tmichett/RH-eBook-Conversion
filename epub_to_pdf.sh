#!/usr/bin/bash
#
# Travis Michette <tmichett@redhat.com>
#

read -p 'Please enter the ePub Filename to convert (with extension): ' epub_file
read -p 'Please enter the name for the PDF file (without extension): ' pdf_file

echo $epub_file
echo $pdf_file

ebook-convert $epub_file ${pdf_file} --pdf-default-font-size 12 --pdf-mono-font-size 14 --pdf-page-margin-left 35 --pdf-page-margin-right 35 --pdf-page-margin-top 35 --pdf-page-margin-bottom 35 --extra-css "pre {background-color: lightgray;}"
