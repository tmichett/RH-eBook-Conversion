#!/usr/bin/bash
#
# Travis Michette <tmichett@redhat.com>
#

echo $epub_file
echo $pdf_file

ebook-convert $epub_file /tmp/$pdf_file --pdf-default-font-size 12 --pdf-mono-font-size 14 --pdf-page-margin-left 35 --pdf-page-margin-right 35 --pdf-page-margin-top 35 --pdf-page-margin-bottom 35 --extra-css "body { background: #fff; color: black;} kbd {background-color: #F7F7F7; border: 1px solid #BEBEBC;} pre {background: #d3d5d4;} aside.note::before {color: #004080;} aside.important::before {color: #795600;} b.button .label {background-color: #F7F7F7; border: 1px solid #BEBEBC;} h1 span.title-val {color: black; -webkit-text-fill-color: black;} h2 span.title {color: black; -webkit-text-fill-color: black;} h2 span.title-val {color: black; -webkit-text-fill-color: black;} #colophon h1.chapter-title {color: black;-webkit-text-fill-color: black;} #colophon > p:last-of-type {color: #EE0000;} table.table thead {background-color: #EE0000;} strong.contribs {margin-left: 3em; color: black; -webkit-text-fill-color: black;} body a:link[href^="mailto:"] {color: blue;} pre {background-color: lightgray;}"

echo "The PDF has been generated ... now copying to local system"

sudo cp /tmp/$pdf_file /tmp/coursebook/