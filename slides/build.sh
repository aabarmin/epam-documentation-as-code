#!/bin/bash

echo "Removing old versions"
rm -rf slides.html
rm -rf slides.pdf
echo "Done"

echo "Building slides"
marp slides.md -o slides.html
marp slides.md --allow-local-files --jpeg-quality 50 --pdf --pdf-notes -o slides.pdf 
echo "Done"
