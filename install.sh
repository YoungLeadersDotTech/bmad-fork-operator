#!/bin/bash

# BMAD Fork Operator Installation Script
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
print_color "======================================" "$BLUE"
print_color "BMAD Fork Operator Installation Script" "$BLUE"
print_color "======================================" "$BLUE"
echo ""

# Check if BMAD path is provided
if [ $# -eq 0 ]; then
    print_color "Usage: ./install.sh /path/to/your/BMAD-Method" "$YELLOW"
    print_color "Example: ./install.sh ~/Projects/BMAD-Method" "$YELLOW"
    exit 1
fi

BMAD_PATH="$1"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Verify BMAD directory exists
if [ ! -d "$BMAD_PATH" ]; then
    print_color "Error: BMAD directory not found at $BMAD_PATH" "$RED"
    exit 1
fi

# Verify it's a BMAD repository
if [ ! -d "$BMAD_PATH/agents" ] || [ ! -d "$BMAD_PATH/tasks" ]; then
    print_color "Error: This doesn't appear to be a BMAD repository" "$RED"
    print_color "Expected to find 'agents' and 'tasks' directories" "$RED"
    exit 1
fi

print_color "Installing BMAD Fork Operator to: $BMAD_PATH" "$GREEN"
echo ""

# Create directories if they don't exist
print_color "Creating necessary directories..." "$YELLOW"
mkdir -p "$BMAD_PATH/agents"
mkdir -p "$BMAD_PATH/tasks"
mkdir -p "$BMAD_PATH/templates"
mkdir -p "$BMAD_PATH/data"
mkdir -p "$BMAD_PATH/bmad-core/agent-teams"

# Copy agent file
print_color "Installing Fork Operator agent..." "$YELLOW"
cp "$SCRIPT_DIR/agents/bmad-fork-operator.md" "$BMAD_PATH/agents/"
print_color "✓ Agent installed" "$GREEN"

# Copy task files
print_color "Installing task files..." "$YELLOW"
cp "$SCRIPT_DIR/tasks/build-agent-interactive.md" "$BMAD_PATH/tasks/"
cp "$SCRIPT_DIR/tasks/validate-agent.md" "$BMAD_PATH/tasks/"
cp "$SCRIPT_DIR/tasks/validate-expansion.md" "$BMAD_PATH/tasks/"
print_color "✓ Tasks installed" "$GREEN"

# Copy template files
print_color "Installing templates..." "$YELLOW"
cp "$SCRIPT_DIR/templates/agent-tmpl.yaml" "$BMAD_PATH/templates/"
cp "$SCRIPT_DIR/templates/expansion-pack-tmpl.yaml" "$BMAD_PATH/templates/"
print_color "✓ Templates installed" "$GREEN"

# Copy data files
print_color "Installing data resources..." "$YELLOW"
cp "$SCRIPT_DIR/data/bmad-conventions.md" "$BMAD_PATH/data/"
cp "$SCRIPT_DIR/data/agent-best-practices.md" "$BMAD_PATH/data/"
cp "$SCRIPT_DIR/data/prompt-engineering-patterns.md" "$BMAD_PATH/data/"
print_color "✓ Data resources installed" "$GREEN"

# Copy team configuration
print_color "Installing team configuration..." "$YELLOW"
cp "$SCRIPT_DIR/agent-teams/team-framework.yaml" "$BMAD_PATH/bmad-core/agent-teams/"
print_color "✓ Team configuration installed" "$GREEN"

echo ""
print_color "======================================" "$BLUE"
print_color "Installation Complete!" "$GREEN"
print_color "======================================" "$BLUE"
echo ""

print_color "The BMAD Fork Operator has been successfully installed!" "$GREEN"
echo ""
print_color "To use it:" "$YELLOW"
print_color "1. Open your AI assistant (Claude, etc.)" "$YELLOW"
print_color "2. Navigate to your BMAD directory" "$YELLOW"
print_color "3. Run: /bmad-fork-operator" "$YELLOW"
print_color "4. Use *help to see available commands" "$YELLOW"
echo ""
print_color "Key commands:" "$BLUE"
print_color "  *build-agent     - Interactive agent creation" "$BLUE"
print_color "  *validate-agent  - Validate agent structure" "$BLUE"
print_color "  *create-expansion-pack - Create expansion pack" "$BLUE"
echo ""
print_color "Created by John Conneely | https://github.com/YoungLeadersDotTech" "$GREEN"