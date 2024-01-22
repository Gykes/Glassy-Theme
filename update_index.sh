#!/bin/bash

# Generate SHA256 hash for Glassy.zip
sha256_hash=$(sha256sum Glassy.zip | cut -d ' ' -f 1)

# Update index.yml with new SHA256 hash and current date
sed -i "s/sha256: .*/sha256: $sha256_hash/" index.yml
sed -i "s/date: .*/date: \"$(date +"%Y-%m-%d %H:%M:%S")\"/" index.yml

# Print the updated index.yml for verification
cat index.yml
