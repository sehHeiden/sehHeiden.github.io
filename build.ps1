# Hugo Build Script for Local Development
# This script builds the Hugo site locally

Write-Host "🚀 Building Hugo site..." -ForegroundColor Green

# Clean previous build
if (Test-Path "public") {
    Remove-Item -Recurse -Force "public"
    Write-Host "✅ Cleaned previous build" -ForegroundColor Yellow
}

# Build the site
try {
    hugo --gc --minify
    Write-Host "✅ Hugo build completed successfully!" -ForegroundColor Green
    
    # Show build summary
    if (Test-Path "public") {
        $fileCount = (Get-ChildItem -Recurse "public" | Measure-Object).Count
        Write-Host "📊 Generated $fileCount files in public/ directory" -ForegroundColor Cyan
    }
} catch {
    Write-Host "❌ Hugo build failed: $_" -ForegroundColor Red
    exit 1
}

Write-Host "🎉 Build complete! You can now:" -ForegroundColor Green
Write-Host "   - Serve locally: hugo server" -ForegroundColor White
Write-Host "   - Deploy the public/ directory to your web server" -ForegroundColor White
