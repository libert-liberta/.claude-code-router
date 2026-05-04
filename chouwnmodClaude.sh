#!/bin/bash

echo "chown and chmod for ~/.claude, ~/.claude-code-router, and current directory..."
chown -R $(whoami) ~/.claude && chmod -R 755 ~/.claude
chown -R $(whoami) ~/.claude-code-router && chmod -R 755 ~/.claude-code-router

echo "Current directory chown and chmod: $(pwd)"
currentDir=$(pwd)
chown -R $(whoami) "$currentDir" && chmod -R 755 "$currentDir"
