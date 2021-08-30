#!/bin/sh

pandoc -s --template="./templates/default.html" -f markdown-smart -c style/default.css "resume.md" -o "resume.html"
wkhtmltopdf --enable-local-file-access "resume.html" "resume.pdf"
rm resume.html
