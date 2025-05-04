#!/bin/zsh

# === MeshyPanda STL Fixer Installer ===
# This script checks for required dependencies (Homebrew + admesh),
# makes repair_stl.sh executable, and prints next steps for the user.

echo "🐼 🔧 Installing MeshyPanda STL Fixer dependencies..."

# 1️⃣ Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
    echo "❌ Homebrew is not installed."
    echo "👉 Please install Homebrew first from https://brew.sh/"
    exit 1
fi

# 2️⃣ Check if admesh is installed
if ! command -v admesh >/dev/null 2>&1; then
    echo "📦 Installing admesh via Homebrew..."
    brew install admesh
else
    echo "✅ admesh already installed."
fi

# 3️⃣ Confirm admesh location
AD_MESH_PATH=$(which admesh)
echo "✅ admesh found at: $AD_MESH_PATH"

# 4️⃣ Make repair_stl.sh executable
SCRIPT_PATH="$(dirname "$0")/repair_stl.sh"

if [ -f "$SCRIPT_PATH" ]; then
    chmod +x "$SCRIPT_PATH"
    echo "✅ Marked repair_stl.sh as executable."
else
    echo "❌ repair_stl.sh not found in this directory: $(dirname "$0")"
fi

# 5️⃣ Print success message and usage
echo ""
echo "🎉 MeshyPanda STL Fixer installation complete!"
echo ""
echo "🚀 You can now repair an STL manually by running:"
echo ""
echo "  \"$SCRIPT_PATH\" <path-to-your-stl-file>"
echo ""
echo "✅ Or use the included Automator app to drag-and-drop files for repair."
echo ""
echo "🐼 Thanks for using MeshyPanda & good luck with your print!"
