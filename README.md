# RH-eBook-Conversion

Red Hat eBook Conversion with Calibre

## Usage

Place files in the same directory as the downloaded ePub files or place the files and make them executable in the $PATH. Execute the script and enter the entire filename of the ePub file including the extension (per the prompt). Enter the name of the output PDF file (per the prompt).

```
$ ./epub_to_pdf.zsh
Please enter the ePub Filename to convert (with extension):
RH403_VT_Test.epub
Please enter the name for the PDF file (with extension):
RH403_VT_Test.pdf
RH403_VT_Test.epub
RH403_VT_Test.pdf
Conversion options changed from defaults:
  pdf_page_margin_right: 35.0

... OUTPUT OMITTED ...

Removed 1226 duplicate images
100% Updated metadata in PDF
PDF output written to /Users/travis/Downloads/RH403_VT_Test2.pdf
Output saved to   /Users/travis/Downloads/RH403_VT_Test2.pdf

```


Running the ePub conversion in Windows

```
powershell.exe -noprofile -executionpolicy bypass -file .\epub_to_pdf.ps1
```


## Container Instructions

```
$  podman run --name adocpdf -e "epub_file=RH294.epub" -e "pdf_file=RH294.pdf" --rm -v ./:/tmp/coursebook:Z epub-to-pdf:latest
```
