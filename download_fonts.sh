#!/bin/bash
# Script to download and upload font PBF files

# Create temporary download directory
mkdir -p fonts

# Function to download font file
download_font() {
    local dir="$1"
    local url_dir="$2"
    local range="$3"
    
    # Create directory for font
    mkdir -p "fonts/$dir"
    
    # Download font file
    echo "Downloading $dir $range"
    curl -o "fonts/$dir/$range.pbf" "https://api.maptiler.com/fonts/$url_dir/$range.pbf?key=NzxHDluOAR0TNQ2VJpdr"
}

# Function to download all ranges for a font combination
download_font_ranges() {
    local dir="$1"
    local url_dir="$2"
    
    # Standard Unicode ranges
    for range in "0-255" "256-511" "512-767" "768-1023" \
                 "1024-1279" "1280-1535" "1536-1791" "1792-2047" \
                 "2048-2303" "2304-2559" "2560-2815" "2816-3071" \
                 "3072-3327" "3328-3583" "3584-3839" "3840-4095" \
                 "4096-4351" "4352-4607" "4608-4863" "4864-5119" \
                 "8192-8447" "8448-8703" "8704-8959" "8960-9215"; do
        download_font "$dir" "$url_dir" "$range"
    done
}

# Lato Regular,Noto Sans Regular
download_font_ranges "Lato Regular,Noto Sans Regular" "Lato%20Regular%2CNoto%20Sans%20Regular"

# Lato Light,Noto Sans Regular
download_font_ranges "Lato Light,Noto Sans Regular" "Lato%20Light%2CNoto%20Sans%20Regular"

# Lato Semi Bold,Noto Sans Bold
download_font_ranges "Lato Semi Bold,Noto Sans Bold" "Lato%20Semi%20Bold%2CNoto%20Sans%20Bold"

# Lato Semi Bold Italic,Noto Sans Bold
download_font_ranges "Lato Semi Bold Italic,Noto Sans Bold" "Lato%20Semi%20Bold%20Italic%2CNoto%20Sans%20Bold"

# Lato Semi Bold Italic,Noto Sans Regular
download_font_ranges "Lato Semi Bold Italic,Noto Sans Regular" "Lato%20Semi%20Bold%20Italic%2CNoto%20Sans%20Regular"

# Lato Semi Bold Italic,Noto Sans Italic
download_font_ranges "Lato Semi Bold Italic,Noto Sans Italic" "Lato%20Semi%20Bold%20Italic%2CNoto%20Sans%20Italic"

# Noto Sans Regular
download_font_ranges "Noto Sans Regular" "Noto%20Sans%20Regular"

# Open Sans Semibold,Noto Sans Bold
download_font_ranges "Open Sans Semibold,Noto Sans Bold" "Open%20Sans%20Semibold%2CNoto%20Sans%20Bold"

# Open Sans Bold Italic,Noto Sans Regular
download_font_ranges "Open Sans Bold Italic,Noto Sans Regular" "Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular"

# Open Sans Regular,Noto Sans Regular
download_font_ranges "Open Sans Regular,Noto Sans Regular" "Open%20Sans%20Regular%2CNoto%20Sans%20Regular"

# Open Sans Semibold Italic,Noto Sans Regular
download_font_ranges "Open Sans Semibold Italic,Noto Sans Regular" "Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular"

# Open Sans Semibold Italic,Noto Sans Bold
download_font_ranges "Open Sans Semibold Italic,Noto Sans Bold" "Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold"

# Open Sans Italic,Noto Sans Italic
download_font_ranges "Open Sans Italic,Noto Sans Italic" "Open%20Sans%20Italic%2CNoto%20Sans%20Italic"