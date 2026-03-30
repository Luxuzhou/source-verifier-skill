#!/bin/bash
# Source Verifier - One-line installer
# Usage: curl -fsSL https://raw.githubusercontent.com/Luxuzhou/source-verifier-skill/master/install.sh | bash

SKILL_DIR="${HOME}/.claude/skills/source-verifier"

if [ -d "$SKILL_DIR/.git" ]; then
  echo "Updating source-verifier..."
  cd "$SKILL_DIR" && git pull
else
  echo "Installing source-verifier..."
  git clone https://github.com/Luxuzhou/source-verifier-skill.git "$SKILL_DIR"
fi

echo ""
echo "Done! Restart Claude Code, then type /source-verifier to get started."
