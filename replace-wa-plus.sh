#!/bin/bash

# Script: replace-wa-plus.sh
# Purpose: Replace "WA Pluse CRM" with "WA Pluse CRM" across the project
# Safe: Excludes node_modules, dist, and build directories

set -e

echo "🔁 Replacing 'WA Pluse CRM' → 'WA Pluse CRM'"
echo "📁 Project root: $(pwd)"

find . \
  -path "./node_modules" -prune -o \
  -path "./dist" -prune -o \
  -path "./build" -prune -o \
  -type f \
  -exec sed -i 's/WA Pluse CRM/WA Pluse CRM/g' {} +

echo "✅ Replacement completed successfully."
