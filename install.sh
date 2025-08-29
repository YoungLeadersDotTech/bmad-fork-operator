#!/bin/bash

# BMAD Framework Tools Expansion Pack Installation Script
# Created by John Conneely (https://github.com/YoungLeadersDotTech)

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_color() {
    echo -e "${2}${1}${NC}"
}

# Header
print_color "============================================" "$BLUE"
print_color "BMAD Framework Tools Expansion Pack Installer" "$BLUE"
print_color "============================================" "$BLUE"
echo ""

# Check if BMAD path is provided
if [ $# -eq 0 ]; then
    print_color "Usage: ./install.sh /path/to/your/BMAD-Method" "$YELLOW"
    print_color "Example: ./install.sh ~/Projects/BMAD-METHOD-TOAST" "$YELLOW"
    exit 1
fi

BMAD_PATH="$1"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PACK_NAME="bmad-framework-tools"

# Verify BMAD directory exists
if [ ! -d "$BMAD_PATH" ]; then
    print_color "Error: BMAD directory not found at $BMAD_PATH" "$RED"
    exit 1
fi

# Verify it's a BMAD repository with expansion-packs directory
if [ ! -d "$BMAD_PATH/expansion-packs" ]; then
    print_color "Error: No expansion-packs directory found in BMAD repository" "$RED"
    print_color "Expected to find: $BMAD_PATH/expansion-packs" "$RED"
    exit 1
fi

print_color "Installing BMAD Framework Tools to: $BMAD_PATH/expansion-packs/$PACK_NAME" "$GREEN"
echo ""

# Create expansion pack directory
print_color "Creating expansion pack directory..." "$YELLOW"
mkdir -p "$BMAD_PATH/expansion-packs/$PACK_NAME"

# Copy entire expansion pack structure
print_color "Installing expansion pack files..." "$YELLOW"
cp -r "$SCRIPT_DIR"/* "$BMAD_PATH/expansion-packs/$PACK_NAME/"

# Remove install script and git files from destination
rm -f "$BMAD_PATH/expansion-packs/$PACK_NAME/install.sh"
rm -rf "$BMAD_PATH/expansion-packs/$PACK_NAME/.git"
rm -f "$BMAD_PATH/expansion-packs/$PACK_NAME/.gitignore"

print_color "✓ Expansion pack installed" "$GREEN"

echo ""
print_color "============================================" "$BLUE"
print_color "Installation Complete!" "$GREEN"
print_color "============================================" "$BLUE"
echo ""

print_color "The BMAD Framework Tools expansion pack has been installed!" "$GREEN"
echo ""
print_color "The pack includes:" "$YELLOW"
print_color "  • Fork Operator Agent - Interactive agent builder" "$BLUE"
print_color "  • Validation tools for agents and expansion packs" "$BLUE"
print_color "  • Agent creation templates" "$BLUE"
print_color "  • BMAD conventions and best practices documentation" "$BLUE"
echo ""
print_color "To use the Fork Operator:" "$YELLOW"
print_color "1. Open your AI assistant (Claude, etc.)" "$YELLOW"
print_color "2. Navigate to your BMAD directory" "$YELLOW"
print_color "3. Run: /bmadFramework:bmad-fork-operator" "$YELLOW"
print_color "4. Use *help to see available commands" "$YELLOW"
echo ""
print_color "Key commands:" "$BLUE"
print_color "  *build-agent     - Interactive agent creation" "$BLUE"
print_color "  *validate-agent  - Validate agent structure" "$BLUE"
print_color "  *create-expansion-pack - Create expansion pack" "$BLUE"
echo ""
print_color "Created by John Conneely | https://github.com/YoungLeadersDotTech" "$GREEN"