#!/bin/bash
# Script to download and upload font PBF files

# Create temporary download directory
mkdir -p fonts

# Function to download font file
download_font() {
    local dir="$1"
    local range="$2"
    local url="$3"
    
    # Create directory for font
    mkdir -p "fonts/$dir"
    
    # Download font file
    echo "Downloading $dir $range"
    curl -o "fonts/$dir/$range.pbf" "$url"
}

# Lato Regular,Noto Sans Regular
download_font "Lato%20Regular,Noto%20Sans%20Regular" "0-255" "https://api.maptiler.com/fonts/Lato%20Regular%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Lato%20Regular,Noto%20Sans%20Regular" "256-511" "https://api.maptiler.com/fonts/Lato%20Regular%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Lato%20Regular,Noto%20Sans%20Regular" "512-767" "https://api.maptiler.com/fonts/Lato%20Regular%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Lato%20Regular,Noto%20Sans%20Regular" "768-1023" "https://api.maptiler.com/fonts/Lato%20Regular%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

# Lato Light,Noto Sans Regular
download_font "Lato%20Light,Noto%20Sans%20Regular" "0-255" "https://api.maptiler.com/fonts/Lato%20Light%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Lato%20Light,Noto%20Sans%20Regular" "256-511" "https://api.maptiler.com/fonts/Lato%20Light%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Lato%20Light,Noto%20Sans%20Regular" "512-767" "https://api.maptiler.com/fonts/Lato%20Light%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Lato%20Light,Noto%20Sans%20Regular" "768-1023" "https://api.maptiler.com/fonts/Lato%20Light%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

# Noto Sans Regular
download_font "Noto%20Sans%20Regular" "0-255" "https://api.maptiler.com/fonts/Noto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Noto%20Sans%20Regular" "256-511" "https://api.maptiler.com/fonts/Noto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Noto%20Sans%20Regular" "512-767" "https://api.maptiler.com/fonts/Noto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Noto%20Sans%20Regular" "768-1023" "https://api.maptiler.com/fonts/Noto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

# Open Sans Semibold,Noto Sans Bold
download_font "Open%20Sans%20Semibold,Noto%20Sans%20Bold" "0-255" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Bold/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold,Noto%20Sans%20Bold" "256-511" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Bold/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold,Noto%20Sans%20Bold" "512-767" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Bold/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold,Noto%20Sans%20Bold" "768-1023" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%2CNoto%20Sans%20Bold/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

# Open Sans Bold Italic,Noto Sans Regular
download_font "Open%20Sans%20Bold%20Italic,Noto%20Sans%20Regular" "0-255" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Bold%20Italic,Noto%20Sans%20Regular" "256-511" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Bold%20Italic,Noto%20Sans%20Regular" "512-767" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Bold%20Italic,Noto%20Sans%20Regular" "768-1023" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

# Open Sans Semibold Italic,Noto Sans Regular
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Regular" "0-255" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Regular" "256-511" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Regular" "512-767" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Regular" "768-1023" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

# Open Sans Semibold Italic,Noto Sans Bold
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Bold" "0-255" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Bold" "256-511" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Bold" "512-767" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Bold" "768-1023" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

# Open Sans Regular,Noto Sans Regular
download_font "Open%20Sans%20Regular,Noto%20Sans%20Regular" "0-255" "https://api.maptiler.com/fonts/Open%20Sans%20Regular%2CNoto%20Sans%20Regular/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Regular,Noto%20Sans%20Regular" "256-511" "https://api.maptiler.com/fonts/Open%20Sans%20Regular%2CNoto%20Sans%20Regular/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Regular,Noto%20Sans%20Regular" "512-767" "https://api.maptiler.com/fonts/Open%20Sans%20Regular%2CNoto%20Sans%20Regular/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Regular,Noto%20Sans%20Regular" "768-1023" "https://api.maptiler.com/fonts/Open%20Sans%20Regular%2CNoto%20Sans%20Regular/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

# Open Sans Bold,Noto Sans Bold
download_font "Open%20Sans%20Bold,Noto%20Sans%20Bold" "0-255" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%2CNoto%20Sans%20Bold/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Bold,Noto%20Sans%20Bold" "256-511" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%2CNoto%20Sans%20Bold/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Bold,Noto%20Sans%20Bold" "512-767" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%2CNoto%20Sans%20Bold/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Bold,Noto%20Sans%20Bold" "768-1023" "https://api.maptiler.com/fonts/Open%20Sans%20Bold%2CNoto%20Sans%20Bold/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"

# Open Sans Semibold Italic,Noto Sans Italic
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Italic" "0-255" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Italic/0-255.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Italic" "256-511" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Italic/256-511.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Italic" "512-767" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Italic/512-767.pbf?key=NzxHDluOAR0TNQ2VJpdr"
download_font "Open%20Sans%20Semibold%20Italic,Noto%20Sans%20Italic" "768-1023" "https://api.maptiler.com/fonts/Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Italic/768-1023.pbf?key=NzxHDluOAR0TNQ2VJpdr"