$epub_file = Read-Host "Please enter the ePub Filename to convert (with extension): " 
$pdf_file = Read-Host "Please enter the name for the PDF file (with extension): "


Write-Host  $epub_file
Write-Host $pdf_file

Invoke-Expression "ebook-convert $epub_file $pdf_file --pdf-default-font-size 12 --pdf-mono-font-size 14 --pdf-page-margin-left 35 --pdf-page-margin-right 35 --pdf-page-margin-top 35 --pdf-page-margin-bottom 35 --extra-css 'pre {background-color: lightgray;}'"
