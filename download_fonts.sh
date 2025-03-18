#!/bin/bash

# MapTiler Font Downloader Script for Mac
# This script downloads all possible font/range combinations
# and saves files with human-readable directory names

# Prompt for MapTiler API key
read -p "Please enter your MapTiler API key: " API_KEY

# Validate that API key is not empty
if [ -z "$API_KEY" ]; then
  echo "Error: API key cannot be empty. Exiting."
  exit 1
fi

# Base URL from the style specification
BASE_URL="https://api.maptiler.com/fonts"

# Output directory
OUTPUT_DIR="fonts"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Font stacks used in the style - these must be URL encoded for use in requests
FONT_STACKS=(
  "Lato%20Regular%2CNoto%20Sans%20Regular"
  "Lato%20Light%2CNoto%20Sans%20Regular"
  "Lato%20Semi%20Bold%2CNoto%20Sans%20Bold"
  "Lato%20Semi%20Bold%20Italic%2CNoto%20Sans%20Bold"
  "Noto%20Sans%20Regular"
  "Open%20Sans%20Bold%2CNoto%20Sans%20Bold"
  "Open%20Sans%20Bold%20Italic%2CNoto%20Sans%20Regular"
  "Open%20Sans%20Italic%2CNoto%20Sans%20Italic"
  "Open%20Sans%20Regular%2CNoto%20Sans%20Regular"
  "Open%20Sans%20Semibold%2CNoto%20Sans%20Bold"
  "Open%20Sans%20Semibold%2CNoto%20Sans%20Regular"
  "Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Bold"
  "Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Italic"
  "Open%20Sans%20Semibold%20Italic%2CNoto%20Sans%20Regular"
)

# Raw font stack names for display and config purposes
RAW_FONT_STACKS=(
  "Lato Regular,Noto Sans Regular"
  "Lato Light,Noto Sans Regular"
  "Lato Semi Bold,Noto Sans Bold"
  "Lato Semi Bold Italic,Noto Sans Bold"
  "Noto Sans Regular"
  "Open Sans Bold,Noto Sans Bold"
  "Open Sans Bold Italic,Noto Sans Regular"
  "Open Sans Italic,Noto Sans Italic"
  "Open Sans Regular,Noto Sans Regular"
  "Open Sans Semibold,Noto Sans Bold"
  "Open Sans Semibold,Noto Sans Regular"
  "Open Sans Semibold Italic,Noto Sans Bold"
  "Open Sans Semibold Italic,Noto Sans Italic"
  "Open Sans Semibold Italic,Noto Sans Regular"
)

# Comprehensive Unicode ranges
# Full set of possible ranges for mapbox/maptiler glyphs
UNICODE_RANGES=(
  "0-255"     # Basic Latin + Latin-1 Supplement
  "256-511"   # Latin Extended-A, Latin Extended-B
  "512-767"   # IPA Extensions, Spacing Modifier Letters, etc.
  "768-1023"  # Combining Diacritical Marks, Greek and Coptic
  "1024-1279" # Cyrillic
  "1280-1535" # Cyrillic Supplement, Armenian, Hebrew
  "1536-1791" # Arabic
  "1792-2047" # Syriac, Arabic Supplement, Thaana
  "2048-2303" # N'Ko, Samaritan, Mandaic, Arabic Extended-A
  "2304-2559" # Devanagari
  "2560-2815" # Bengali
  "2816-3071" # Gurmukhi, Gujarati
  "3072-3327" # Oriya, Tamil
  "3328-3583" # Telugu, Kannada
  "3584-3839" # Malayalam, Sinhala
  "3840-4095" # Thai, Lao
  "4096-4351" # Tibetan, Myanmar
  "4352-4607" # Georgian, Hangul Jamo
  "4608-4863" # Ethiopic
  "4864-5119" # Ethiopic Supplement, Cherokee
  "5120-5375" # Unified Canadian Aboriginal Syllabics
  "5376-5631" # Ogham, Runic, Tagalog
  "5632-5887" # Hanunoo, Buhid, Tagbanwa, Khmer
  "5888-6143" # Mongolian
  "6144-6399" # Limbu, Tai Le, New Tai Lue
  "6400-6655" # Khmer Symbols, Buginese, Tai Tham
  "6656-6911" # Combining Diacritical Marks Extended, Balinese
  "6912-7167" # Sundanese, Batak, Lepcha
  "7168-7423" # Ol Chiki, Cyrillic Extended C, Georgian Extended
  "7424-7679" # Sundanese Supplement, Vedic Extensions
  "7680-7935" # Phonetic Extensions, Latin Extended Additional
  "7936-8191" # Greek Extended
  "8192-8447" # General Punctuation, Superscripts and Subscripts
  "8448-8703" # Currency Symbols, Letterlike Symbols
  "8704-8959" # Number Forms, Arrows
  "8960-9215" # Mathematical Operators
  "9216-9471" # Miscellaneous Technical
  "9472-9727" # Control Pictures, OCR
  "9728-9983" # Enclosed Alphanumerics
  "9984-10239" # Box Drawing, Block Elements
  "10240-10495" # Geometric Shapes
  "10496-10751" # Miscellaneous Symbols
  "10752-11007" # Dingbats, Miscellaneous Mathematical Symbols-A
  "11008-11263" # Supplemental Arrows-A, Braille Patterns
  "11264-11519" # Supplemental Arrows-B, Miscellaneous Mathematical Symbols-B
  "11520-11775" # Supplemental Mathematical Operators
  "11776-12031" # Miscellaneous Symbols and Arrows
  "12032-12287" # Glagolitic, Latin Extended-C
  "12288-12543" # CJK - part 1
  "12544-12799" # CJK - part 2
  "12800-13055" # Kangxi Radicals, Ideographic Description Characters
  "13056-13311" # CJK Symbols and Punctuation
  "13312-19903" # CJK Unified Ideographs (Core)
  "19968-40959" # More CJK Unified Ideographs
  "43008-43055" # CJK - additional
  "44032-55215" # Hangul Syllables
  "55216-55295" # More CJK
  "57344-63743" # Private Use Area
  "63744-64255" # CJK Compatibility Ideographs
  "65024-65279" # Variation Selectors, Vertical Forms
  "65280-65519" # Halfwidth and Fullwidth Forms
)

# Function to download a font range
download_font_range() {
  local encoded_font_stack=$1
  local unicode_range=$2
  local output_dir=$3
  local index=$4
  
  # URL for the request uses encoded font stack
  local url="${BASE_URL}/${encoded_font_stack}/${unicode_range}.pbf?key=${API_KEY}"
  
  # For the output path, use the raw font stack name (not URL encoded)
  local readable_font_dir="${RAW_FONT_STACKS[$index]}"
  local output_path="${output_dir}/${readable_font_dir}/${unicode_range}.pbf"
  
  # Ensure directory exists with spaces instead of URL encoding
  mkdir -p "${output_dir}/${readable_font_dir}"
  
  # Attempt download using curl
  http_response=$(curl -s -o "${output_path}" -w "%{http_code}" "${url}")
  
  # Check if successful (HTTP 200)
  if [ "$http_response" = "200" ]; then
    # Check if the file is not empty (sometimes server returns 200 but empty file)
    if [ -s "${output_path}" ]; then
      echo "Downloaded: ${readable_font_dir}/${unicode_range}.pbf"
      return 0
    else
      # Empty file, consider it a failure
      echo "Empty file received for ${readable_font_dir}/${unicode_range}"
      rm "${output_path}" # Remove empty file
      return 1
    fi
  else
    echo "Failed to download ${readable_font_dir}/${unicode_range}: HTTP ${http_response}"
    # Remove the output file if it exists (failed download)
    [ -f "${output_path}" ] && rm "${output_path}"
    return 1
  fi
}

# Create Maputnik-compatible fonts.json in current directory
create_maputnik_fonts_json() {
  local fonts_json="./fonts.json"
  
  # Individual font names extracted from font stacks
  echo "[" > "$fonts_json"
  echo "  \"Lato Regular\"," >> "$fonts_json"
  echo "  \"Lato Light\"," >> "$fonts_json"
  echo "  \"Lato Semi Bold\"," >> "$fonts_json"
  echo "  \"Lato Semi Bold Italic\"," >> "$fonts_json"
  echo "  \"Noto Sans Regular\"," >> "$fonts_json"
  echo "  \"Noto Sans Bold\"," >> "$fonts_json"
  echo "  \"Noto Sans Italic\"," >> "$fonts_json"
  echo "  \"Open Sans Regular\"," >> "$fonts_json"
  echo "  \"Open Sans Semibold\"," >> "$fonts_json"
  echo "  \"Open Sans Bold\"," >> "$fonts_json"
  echo "  \"Open Sans Italic\"," >> "$fonts_json"
  echo "  \"Open Sans Semibold Italic\"," >> "$fonts_json"
  echo "  \"Open Sans Bold Italic\"" >> "$fonts_json"
  echo "]" >> "$fonts_json"
  
  echo "Created Maputnik-compatible fonts.json in current directory"
}

# Main execution

# Calculate total combinations
total=$((${#FONT_STACKS[@]} * ${#UNICODE_RANGES[@]}))
successful=0
failed=0

echo "Starting download of $total font/range combinations..."
echo "This may take a while. Progress will be displayed."

# Process each combination
current=0
for ((i=0; i<${#FONT_STACKS[@]}; i++)); do
  encoded_font_stack="${FONT_STACKS[$i]}"
  readable_font_stack="${RAW_FONT_STACKS[$i]}"
  
  for unicode_range in "${UNICODE_RANGES[@]}"; do
    ((current++))
    
    # Download the font range
    if download_font_range "$encoded_font_stack" "$unicode_range" "$OUTPUT_DIR" "$i"; then
      ((successful++))
    else
      ((failed++))
    fi
    
    # Display progress
    echo "Progress: $current/$total ($((current*100/total))%)"
    
    # Be nice to the server - brief pause between requests
    sleep 0.2
  done
  
  # Longer pause between font stacks
  echo "Completed font stack: $readable_font_stack"
  sleep 1
done

# Create Maputnik-compatible fonts.json
create_maputnik_fonts_json

# Print summary
echo ""
echo "Download complete!"
echo "Total combinations: $total"
echo "Successfully downloaded: $successful"
echo "Failed: $failed"
echo ""
echo "Files saved to: $OUTPUT_DIR"
echo ""
echo "To use these fonts in your map style:"
echo "1. Set up a local font server pointing to: $OUTPUT_DIR"
echo "2. Update your style's 'glyphs' property to point to your local service"
echo "   Example: 'glyphs': 'http://localhost:3000/fonts/{fontstack}/{range}.pbf'"