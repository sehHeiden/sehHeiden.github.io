#!/bin/bash
# Hugo Build Script for Local Development
# This script builds the Hugo site locally

set -e

echo "🚀 Building Hugo site..."

# Clean previous build
if [ -d "public" ]; then
    rm -rf public
    echo "✅ Cleaned previous build"
fi

# Build the site
echo "🔨 Running Hugo build..."
hugo --gc --minify

echo "✅ Hugo build completed successfully!"

# Show build summary
if [ -d "public" ]; then
    file_count=$(find public -type f | wc -l)
    echo "📊 Generated $file_count files in public/ directory"
fi

echo "🎉 Build complete! You can now:"
echo "   - Serve locally: hugo server"
echo "   - Deploy the public/ directory to your web server"
