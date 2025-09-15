#!/bin/bash

# Count lines of code (excluding blank and full-line comments)
LOC_COUNT=$(find "$WORKSPACE" -type f -name "*.py" -print0 | xargs -0 grep -vE '^\s*$|^\s*#' | wc -l)

# Print the final count to standard output for Jenkins to capture
echo "$LOC_COUNT"