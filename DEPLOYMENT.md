# Hugo Site Deployment Guide

This guide explains how to deploy your Hugo site to GitHub Pages.

## 🚀 Automatic Deployment (Recommended)

### GitHub Actions Pipeline

The repository includes a GitHub Actions workflow (`.github/workflows/deploy.yml`) that automatically:

1. **Triggers on**: Push to `main` branch or manual dispatch
2. **Builds the site** using Hugo 0.147.9 with extended features
3. **Deploys to GitHub Pages** using the official GitHub Pages action

### Setup GitHub Pages

1. Go to your repository settings on GitHub
2. Navigate to **Pages** section
3. Under **Source**, select **GitHub Actions**
4. The workflow will automatically run on your next push to `main`

### Workflow Features

- ✅ **Hugo Extended**: Supports SCSS and advanced features
- ✅ **Minification**: Optimized for production
- ✅ **Garbage Collection**: Removes unused files
- ✅ **Base URL**: Automatically configured for GitHub Pages
- ✅ **Submodules**: Handles theme submodules correctly
- ✅ **Node.js**: Supports npm dependencies if needed

## 🔧 Manual Deployment

### Local Build

#### Windows (PowerShell)
```powershell
.\build.ps1
```

#### Linux/macOS (Bash)
```bash
./build.sh
```

#### Direct Hugo Commands
```bash
# Clean build
rm -rf public/

# Build for production
hugo --gc --minify --baseURL "https://seheheiden.github.io/"

# The site will be in the public/ directory
```

### Manual GitHub Pages Deployment

**Note**: Manual deployment is not recommended. The automated GitHub Actions workflow is preferred.

If you need to deploy manually for testing:

1. **Build locally** using one of the methods above
2. **Upload the public/ directory** to your web server or hosting service
3. **For GitHub Pages**: Use the automated workflow instead - just push to `main` branch

## 📁 File Structure

### Source Files (tracked in git)
```
├── .github/workflows/deploy.yml  # GitHub Actions workflow
├── content/                      # Markdown content
├── static/                       # Static assets
├── layouts/                      # Hugo layouts
├── assets/                       # Source assets
├── hugo.toml                     # Hugo configuration
└── themes/                       # Hugo themes
```

### Generated Files (ignored by git)
```
├── public/                       # Generated site (deployed)
├── resources/                    # Hugo resources cache
└── .hugo_build.lock             # Hugo build lock
```

## 🛠 Configuration

### Hugo Configuration (`hugo.toml`)
The site is configured for GitHub Pages with:
- Base URL: `https://seheheiden.github.io/`
- Unsafe HTML rendering enabled
- Custom CSS and shortcodes
- Utterances comments integration

### Build Options
- `--gc`: Garbage collection for unused files
- `--minify`: Minifies HTML, CSS, and JS
- `--baseURL`: Sets the correct base URL for deployment

## 🐛 Troubleshooting

### Common Issues

1. **Images not loading**: Ensure images are in `static/` directory
2. **CSS not applying**: Check asset paths in Hugo config
3. **Build failures**: Check Hugo version compatibility
4. **Theme issues**: Ensure themes are properly configured as submodules

### Debug Build
```bash
hugo --gc --minify --verbose --debug
```

### Check Site Locally
```bash
hugo server --buildDrafts --buildFuture
```

## 🔄 Deployment Process

1. **Make changes** to content, layouts, or configuration
2. **Test locally** with `hugo server`
3. **Commit and push** to `main` branch
4. **GitHub Actions** automatically builds and deploys
5. **Site is live** at `https://seheheiden.github.io/`

The deployment typically takes 1-3 minutes to complete.

## 📊 Build Status

You can monitor the build status in the **Actions** tab of your GitHub repository. Each deployment will show:
- Build time
- Deploy time  
- Any errors or warnings
- Link to the deployed site
