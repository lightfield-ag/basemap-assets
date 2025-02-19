#!/bin/bash

# Configuration
API_KEY="NzxHDluOAR0TNQ2VJpdr"
SPRITE_BASE_URL="https://api.maptiler.com/maps/7f81d53f-6bc3-46dd-be8b-8d46bea2a0e0/sprite"
OUTPUT_DIR="./sprites"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Function to download a file
download_file() {
    local url=$1
    local output=$2
    echo "Downloading: $url"
    
    # Use curl to download the file
    if curl -f -L -s "${url}?key=${API_KEY}" -o "$output"; then
        echo "Successfully downloaded: $output"
        return 0
    else
        local status=$?
        echo "Failed to download: $url (status: $status)"
        return 1
    fi
}

# Download regular sprite files
download_file "${SPRITE_BASE_URL}.json" "${OUTPUT_DIR}/sprite.json"
download_file "${SPRITE_BASE_URL}.png" "${OUTPUT_DIR}/sprite.png"

# Download retina (@2x) sprite files
download_file "${SPRITE_BASE_URL}@2x.json" "${OUTPUT_DIR}/sprite@2x.json"
download_file "${SPRITE_BASE_URL}@2x.png" "${OUTPUT_DIR}/sprite@2x.png"

# Analyze sprite.json if it exists
if [ -f "$OUTPUT_DIR/sprite.json" ]; then
    echo -e "\nSprite Analysis:"
    
    # Count total number of sprites
    sprite_count=$(grep -o '{' "$OUTPUT_DIR/sprite.json" | wc -l)
    echo "Total number of sprites: $sprite_count"
    
    # Group sprites by size
    echo -e "\nSprites by size:"
    echo "Width x Height : Count"
    # Use awk to extract and count unique dimensions
    awk -F'"' '
        /"width": [0-9]+,/{
            width=$4
            getline
            height=$4
            dim=width "x" height
            count[dim]++
        }
        END{
            for (d in count) {
                printf "%-12s: %d\n", d, count[d]
            }
        }' "$OUTPUT_DIR/sprite.json" | sort -nr -k3

    # Show some example sprite names
    echo -e "\nExample sprite names (first 10):"
    grep -o '"[^"]*": {' "$OUTPUT_DIR/sprite.json" | 
        cut -d'"' -f2 | 
        sort | 
        head -n 10

    echo -e "\nSprite image information:"
    file "$OUTPUT_DIR/sprite.png"
    file "$OUTPUT_DIR/sprite@2x.png"
fi

echo -e "\nDownload process completed."