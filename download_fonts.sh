#!/bin/bash
# Script to download and upload font PBF files

# Create temporary download directory
mkdir -p fonts

echo "Downloading Lato Regular,Noto Sans Regular 0-255"
curl -o "fonts/Lato%20Regular,Noto%20Sans%20Regular_0-255.pbf" "https://api.maptiler.com/fonts/Lato%20Regular%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Regular,Noto Sans Regular 256-511"
curl -o "fonts/Lato%20Regular,Noto%20Sans%20Regular_256-511.pbf" "https://api.maptiler.com/fonts/Lato%20Regular%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Regular,Noto Sans Regular 512-767"
curl -o "fonts/Lato%20Regular,Noto%20Sans%20Regular_512-767.pbf" "https://api.maptiler.com/fonts/Lato%20Regular%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Regular,Noto Sans Regular 768-1023"
curl -o "fonts/Lato%20Regular,Noto%20Sans%20Regular_768-1023.pbf" "https://api.maptiler.com/fonts/Lato%20Regular%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Light,Noto Sans Regular 0-255"
curl -o "fonts/Lato%20Light,Noto%20Sans%20Regular_0-255.pbf" "https://api.maptiler.com/fonts/Lato%20Light%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Light,Noto Sans Regular 256-511"
curl -o "fonts/Lato%20Light,Noto%20Sans%20Regular_256-511.pbf" "https://api.maptiler.com/fonts/Lato%20Light%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Light,Noto Sans Regular 512-767"
curl -o "fonts/Lato%20Light,Noto%20Sans%20Regular_512-767.pbf" "https://api.maptiler.com/fonts/Lato%20Light%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Light,Noto Sans Regular 768-1023"
curl -o "fonts/Lato%20Light,Noto%20Sans%20Regular_768-1023.pbf" "https://api.maptiler.com/fonts/Lato%20Light%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Noto Sans Regular 0-255"
curl -o "fonts/Noto%20Sans%20Regular_0-255.pbf" "https://api.maptiler.com/fonts/Noto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Noto Sans Regular 256-511"
curl -o "fonts/Noto%20Sans%20Regular_256-511.pbf" "https://api.maptiler.com/fonts/Noto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Noto Sans Regular 512-767"
curl -o "fonts/Noto%20Sans%20Regular_512-767.pbf" "https://api.maptiler.com/fonts/Noto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Noto Sans Regular 768-1023"
curl -o "fonts/Noto%20Sans%20Regular_768-1023.pbf" "https://api.maptiler.com/fonts/Noto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold,Noto Sans Bold 0-255"
curl -o "fonts/Open%20Sans%20Semibold,Noto%20Sans%20Bold_0-255.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Bold/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold,Noto Sans Bold 256-511"
curl -o "fonts/Open%20Sans%20Semibold,Noto%20Sans%20Bold_256-511.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Bold/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold,Noto Sans Bold 512-767"
curl -o "fonts/Open%20Sans%20Semibold,Noto%20Sans%20Bold_512-767.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Bold/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold,Noto Sans Bold 768-1023"
curl -o "fonts/Open%20Sans%20Semibold,Noto%20Sans%20Bold_768-1023.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Bold/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Bold Italic,Noto Sans Regular 0-255"
curl -o "fonts/Open%20Sans%20Bold%20Italic,Noto%20Sans%20Regular_0-255.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Bold Italic,Noto Sans Regular 256-511"
curl -o "fonts/Open%20Sans%20Bold%20Italic,Noto%20Sans%20Regular_256-511.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Bold Italic,Noto Sans Regular 512-767"
curl -o "fonts/Open%20Sans%20Bold%20Italic,Noto%20Sans%20Regular_512-767.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Bold Italic,Noto Sans Regular 768-1023"
curl -o "fonts/Open%20Sans%20Bold%20Italic,Noto%20Sans%20Regular_768-1023.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Regular 0-255"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Regular_0-255.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Regular 256-511"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Regular_256-511.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Regular 512-767"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Regular_512-767.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Regular 768-1023"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Regular_768-1023.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Bold 0-255"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Bold_0-255.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Bold 256-511"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Bold_256-511.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Bold 512-767"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Bold_512-767.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Bold 768-1023"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Bold_768-1023.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Regular,Noto Sans Regular 0-255"
curl -o "fonts/Open%20Sans%20Regular,Noto%20Sans%20Regular_0-255.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Regular%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Regular,Noto Sans Regular 256-511"
curl -o "fonts/Open%20Sans%20Regular,Noto%20Sans%20Regular_256-511.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Regular%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Regular,Noto Sans Regular 512-767"
curl -o "fonts/Open%20Sans%20Regular,Noto%20Sans%20Regular_512-767.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Regular%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Regular,Noto Sans Regular 768-1023"
curl -o "fonts/Open%20Sans%20Regular,Noto%20Sans%20Regular_768-1023.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Regular%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Bold,Noto Sans Bold 0-255"
curl -o "fonts/Open%20Sans%20Bold,Noto%20Sans%20Bold_0-255.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%2CNoto%20Sans%20Bold/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Bold,Noto Sans Bold 256-511"
curl -o "fonts/Open%20Sans%20Bold,Noto%20Sans%20Bold_256-511.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%2CNoto%20Sans%20Bold/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Bold,Noto Sans Bold 512-767"
curl -o "fonts/Open%20Sans%20Bold,Noto%20Sans%20Bold_512-767.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%2CNoto%20Sans%20Bold/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Bold,Noto Sans Bold 768-1023"
curl -o "fonts/Open%20Sans%20Bold,Noto%20Sans%20Bold_768-1023.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%2CNoto%20Sans%20Bold/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Italic 0-255"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Italic_0-255.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Italic/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Italic 256-511"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Italic_256-511.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Italic/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Italic 512-767"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Italic_512-767.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Italic/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold Italic,Noto Sans Italic 768-1023"
curl -o "fonts/Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Italic_768-1023.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Italic/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Italic,Noto Sans Italic 0-255"
curl -o "fonts/Open%20Sans%20Italic,Noto%20Sans%20Italic_0-255.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Italic%2CNoto%20Sans%20Italic/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Italic,Noto Sans Italic 256-511"
curl -o "fonts/Open%20Sans%20Italic,Noto%20Sans%20Italic_256-511.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Italic%2CNoto%20Sans%20Italic/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Italic,Noto Sans Italic 512-767"
curl -o "fonts/Open%20Sans%20Italic,Noto%20Sans%20Italic_512-767.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Italic%2CNoto%20Sans%20Italic/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Italic,Noto Sans Italic 768-1023"
curl -o "fonts/Open%20Sans%20Italic,Noto%20Sans%20Italic_768-1023.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Italic%2CNoto%20Sans%20Italic/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold,Noto Sans Regular 0-255"
curl -o "fonts/Open%20Sans%20Semibold,Noto%20Sans%20Regular_0-255.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold,Noto Sans Regular 256-511"
curl -o "fonts/Open%20Sans%20Semibold,Noto%20Sans%20Regular_256-511.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold,Noto Sans Regular 512-767"
curl -o "fonts/Open%20Sans%20Semibold,Noto%20Sans%20Regular_512-767.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Open Sans Semibold,Noto Sans Regular 768-1023"
curl -o "fonts/Open%20Sans%20Semibold,Noto%20Sans%20Regular_768-1023.pbf" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Semi Bold,Noto Sans Bold 0-255"
curl -o "fonts/Lato%20Semi%20Bold,Noto%20Sans%20Bold_0-255.pbf" "https://api.maptiler.com/fonts/Lato%20Semi%20Bold%2CNoto%20Sans%20Bold/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Semi Bold,Noto Sans Bold 256-511"
curl -o "fonts/Lato%20Semi%20Bold,Noto%20Sans%20Bold_256-511.pbf" "https://api.maptiler.com/fonts/Lato%20Semi%20Bold%2CNoto%20Sans%20Bold/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Semi Bold,Noto Sans Bold 512-767"
curl -o "fonts/Lato%20Semi%20Bold,Noto%20Sans%20Bold_512-767.pbf" "https://api.maptiler.com/fonts/Lato%20Semi%20Bold%2CNoto%20Sans%20Bold/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Semi Bold,Noto Sans Bold 768-1023"
curl -o "fonts/Lato%20Semi%20Bold,Noto%20Sans%20Bold_768-1023.pbf" "https://api.maptiler.com/fonts/Lato%20Semi%20Bold%2CNoto%20Sans%20Bold/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Semi Bold Italic,Noto Sans Bold 0-255"
curl -o "fonts/Lato%20Semi%20Bold%20Italic,Noto%20Sans%20Bold_0-255.pbf" "https://api.maptiler.com/fonts/Lato%20Semi%20Bold%20Italic%2CNoto%20Sans%20Bold/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Semi Bold Italic,Noto Sans Bold 256-511"
curl -o "fonts/Lato%20Semi%20Bold%20Italic,Noto%20Sans%20Bold_256-511.pbf" "https://api.maptiler.com/fonts/Lato%20Semi%20Bold%20Italic%2CNoto%20Sans%20Bold/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Semi Bold Italic,Noto Sans Bold 512-767"
curl -o "fonts/Lato%20Semi%20Bold%20Italic,Noto%20Sans%20Bold_512-767.pbf" "https://api.maptiler.com/fonts/Lato%20Semi%20Bold%20Italic%2CNoto%20Sans%20Bold/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"

echo "Downloading Lato Semi Bold Italic,Noto Sans Bold 768-1023"
curl -o "fonts/Lato%20Semi%20Bold%20Italic,Noto%20Sans%20Bold_768-1023.pbf" "https://api.maptiler.com/fonts/Lato%20Semi%20Bold%20Italic%2CNoto%20Sans%20Bold/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

