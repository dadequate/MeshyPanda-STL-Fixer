#!/bin/zsh

# === MeshyPanda STL Fixer ===
# A simple STL repair utility for macOS
# Drop an STL file onto the Automator app (or run manually) to repair it.
# Uses admesh under the hood to fix common mesh issues.
#
# By Brad Hilton (2025)
#
# Requirements:
# - admesh installed at /opt/homebrew/bin/admesh
#   (install via Homebrew: `brew install admesh`)

INPUT="$1"  # Input STL file path
DIR=$(dirname "$INPUT")  # Directory of input file
BASENAME=$(basename "$INPUT" .stl)  # Filename without extension
OUTPUT="$DIR/${BASENAME}-fixed.stl"  # Output filename

# === DEBUG LOGGING ===
# Debug logging is enabled by default to ~/Desktop/meshypanda_debug_log.txt
# To disable logging, comment out both lines below
echo "MeshyPanda running: /opt/homebrew/bin/admesh --write-binary-stl \"$OUTPUT\" \"$INPUT\"" >> ~/Desktop/meshypanda_debug_log.txt
/opt/homebrew/bin/admesh --write-binary-stl "$OUTPUT" "$INPUT" >> ~/Desktop/meshypanda_debug_log.txt 2>&1

# === MAIN COMMAND WITHOUT LOGGING ===
# If you want to disable debug logging, uncomment this line and comment the two above
# /opt/homebrew/bin/admesh --write-binary-stl "$OUTPUT" "$INPUT"

# === NOTIFICATION ===
# Shows macOS notification when done
osascript -e "display notification \"✅ Model fixed: ${BASENAME}-fixed.stl\" with title \"MeshyPanda STL Fixer\""
