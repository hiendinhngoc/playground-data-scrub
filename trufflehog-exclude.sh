#!/bin/bash
EXCLUDED_FILES="credentials.txt"

# Find all files that are not excluded
FILES_TO_SCAN=$(git ls-files | grep -vE "$EXCLUDED_FILES")

# Run trufflehog on the filtered file list
#trufflehog filesystem --rules trufflehog-rules.json $FILES_TO_SCAN
$HOME/.local/bin/trufflehog filesystem trufflehog-rules.yaml --fail $FILES_TO_SCAN