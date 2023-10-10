#!/bin/zsh
# Travis Michette <tmichett@redhat.com>
#

echo 'Please enter the ePub Filename to convert (with extension): ' 
read epub_file
echo 'Please enter the name for the PDF file (without extension): ' 
read pdf_file

echo $epub_file
echo $pdf_file

/Applications/calibre.app/Contents/MacOS/ebook-convert $epub_file ${pdf_file} --pdf-default-font-size 12 --pdf-mono-font-size 14 --pdf-page-margin-left 35 --pdf-page-margin-right 35 --pdf-page-margin-top 35 --pdf-page-margin-bottom 35 --extra-css "pre {background-color: lightgray;}"
