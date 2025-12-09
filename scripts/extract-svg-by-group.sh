#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
INPUT_FILE="$SCRIPT_DIR/hackerspub-grouped.svg"
OUTPUT_DIR="$SCRIPT_DIR/../exports"
mkdir -p "$OUTPUT_DIR"

inkscape --query-all "$INPUT_FILE" | while IFS=',' read -r id x y w h; do
  if [[ "$id" == g* ]]; then
    echo "Exporting: $id"
    inkscape "$INPUT_FILE" \
      --export-id="$id" \
      --export-id-only \
      --export-type=svg \
      --export-filename="$OUTPUT_DIR/${id}.svg"
  fi
done
