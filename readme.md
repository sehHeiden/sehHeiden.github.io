# SeHe's Hugo Blog

[![Deploy Hugo site to GitHub Pages](https://github.com/sehHeiden/sehHeiden.github.io/actions/workflows/deploy.yml/badge.svg)](https://github.com/sehHeiden/sehHeiden.github.io/actions/workflows/deploy.yml)
[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Active-brightgreen)](https://seheheiden.github.io)
[![Hugo](https://img.shields.io/badge/Hugo-0.147.9-blue)](https://gohugo.io/)

A modern Hugo-powered blog with automated GitHub Pages deployment using GitHub Actions. This repository showcases best practices for static site generation, continuous deployment, and clean documentation.

> **✅ Status**: Fully automated deployment pipeline configured and working correctly.

🌐 **Live Site**: [https://sehheiden.github.io](https://sehheiden.github.io)

## 🚀 Quick Start

1. **Make Changes**: Edit content in `content/` or update configurations as needed.
2. **Test Locally**: Run `hugo server -D` to preview on `http://localhost:1313`.
3. **Commit Changes**: Use Git - `git add .`, `git commit -m "message"`, `git push`.
4. **Deploy**: Automatic via GitHub Actions or manually using provided scripts.

## ✨ Features

### 🚀 Deployment & CI/CD
- **Automated Deployment**: GitHub Actions pipeline with Hugo Extended support
- **Single Branch Workflow**: Streamlined deployment from `main` branch only
- **Build Optimization**: Minification, garbage collection, and asset optimization
- **Fast Deployment**: Typically completes in 1-3 minutes
- **Dependency Management**: Dependabot for automated GitHub Actions updates

### 🛠 Development Experience
- **Pre-commit Hooks**: Automatic cleanup of generated files
- **Cross-platform Build Scripts**: PowerShell (Windows) and Bash (Unix) support
- **Hot Reload**: Live preview with `hugo server`
- **Submodule Support**: Automatic handling of theme dependencies

### 📱 Modern Web Standards
- **Responsive Design**: Mobile-first approach
- **Performance Optimized**: Minified assets and optimized loading
- **SEO Ready**: Meta tags and structured data support
- **Comment System**: Utterances integration for GitHub-based discussions

## 📁 Repository Structure

### Source Files (tracked in git)
```
├── .github/
│   ├── workflows/deploy.yml   # GitHub Actions CI/CD pipeline
│   └── dependabot.yml        # Dependency management
├── content/                   # Markdown content and blog posts
│   └── posts/                 # Blog articles
├── static/                    # Static assets (images, files)
├── layouts/                   # Custom Hugo templates
├── assets/                    # Source assets (SCSS, JS)
├── themes/                    # Hugo themes (as submodules)
├── hugo.toml                  # Hugo configuration
├── build.ps1                  # Windows build script
├── build.sh                   # Unix build script
└── README.md                  # This comprehensive guide
```

### Generated Files (Git Ignored)
- `public/` - Built static site (deployed)
- `resources/` - Hugo cache and processed assets
- `.hugo_build.lock` - Hugo build lock file

### Hugo Configuration (`hugo.toml`)
The site is configured for GitHub Pages with:
- Base URL: `https://seheheiden.github.io/`
- Unsafe HTML rendering enabled (for rich content)
- Custom CSS and shortcodes support
- Utterances comments integration
- European timezone settings

## 📄 Technical Specifications

| Component | Version/Details |
|-----------|----------------|
| **Hugo** | 0.147.9 Extended |
| **Node.js** | Latest LTS (for npm dependencies) |
| **Dart Sass** | Latest (via snap) |
| **Deployment** | GitHub Actions + GitHub Pages (workflow mode) |
| **Build Time** | ~30-60 seconds |
| **Deploy Time** | ~1-3 minutes total |
| **Pages Source** | GitHub Actions (not branch deployment) |

## 🛠 Build & Deploy

### GitHub Actions Pipeline (Automated)

The repository includes a GitHub Actions workflow that automatically:
1. **Triggers on**: Push to `main` branch or manual dispatch
2. **Builds the site** using Hugo 0.147.9 with extended features
3. **Deploys to GitHub Pages** using the official GitHub Pages action

#### Workflow Features
- ✅ **Hugo Extended**: Supports SCSS and advanced features
- ✅ **Minification**: Optimized for production
- ✅ **Garbage Collection**: Removes unused files
- ✅ **Base URL**: Automatically configured for GitHub Pages
- ✅ **Submodules**: Handles theme submodules correctly
- ✅ **Node.js**: Supports npm dependencies if needed

### Build Locally

#### Cross-platform Build Scripts
- **Windows**: Run `./build.ps1`
- **Linux/macOS**: Run `./build.sh`

#### Direct Hugo Commands
```bash
# Clean build
rm -rf public/

# Build for production
hugo --gc --minify --baseURL "https://seheheiden.github.io/"

# The site will be in the public/ directory
```

#### Local Development Server
```bash
# Start development server with drafts
hugo server -D

# With future posts and drafts
hugo server --buildDrafts --buildFuture
```

### Deployment Setup

**Important**: GitHub Pages must be configured to use GitHub Actions, not branch deployment.

1. Go to your repository settings on GitHub
2. Navigate to **Pages** section
3. Under **Source**, select **GitHub Actions** (not "Deploy from a branch")
4. Simply push to `main` to automatically deploy via GitHub Actions

**Verification**: Check that your Pages configuration shows `"build_type": "workflow"`:
```bash
gh api repos/sehHeiden/sehHeiden.github.io/pages
```

## 🔄 Development Workflow

### Creating New Content
```bash
# Create a new blog post
hugo new posts/my-new-post.md

# Start development server
hugo server -D

# Build for production
hugo --gc --minify
```

### Git Workflow
```bash
# Make your changes
git add .
git commit -m "Add new post: My Amazing Article"
git push origin main

# GitHub Actions will automatically build and deploy!
```

## 🛡️ Troubleshooting

### Common Issues

1. **Website shows README instead of blog**: This happens when GitHub Pages is set to "Deploy from a branch" instead of "GitHub Actions". Fix by changing Pages source to "GitHub Actions" in repository settings.
2. **CSS/JS Issues**: Check paths and ensure assets are in `static/` directory
3. **Build Errors**: Run `hugo --verbose --debug` for detailed diagnostics
4. **Deployment Errors**: Check GitHub Actions logs in the "Actions" tab
5. **Theme Issues**: Ensure submodules are properly initialized with `git submodule update --init --recursive`
6. **Images not loading**: Ensure images are in `static/` directory

### GitHub Pages Configuration Issues

**Problem**: Site shows repository README instead of Hugo blog
**Solution**: 
1. Go to repository Settings → Pages
2. Change Source from "Deploy from a branch" to "GitHub Actions"
3. Or use CLI: 
   ```bash
   gh api --method PUT repos/sehHeiden/sehHeiden.github.io/pages --field build_type=workflow --field source[branch]=main --field source[path]=/
   ```

**Verify**: Check configuration with:
```bash
gh api repos/sehHeiden/sehHeiden.github.io/pages
```
Ensure `"build_type": "workflow"` (not "legacy")

### Debugging Steps

1. **Monitor Deployments**:
   ```bash
   gh run list --workflow="deploy.yml" --limit 5
   ```

2. **View Deployment Logs**:
   ```bash
   gh run view [RUN_ID] --log
   ```

3. **Debug Build Locally**:
   ```bash
   hugo --gc --minify --verbose --debug
   ```

### Build Status Monitoring

Monitor the build status in the **Actions** tab of your GitHub repository. Each deployment shows:
- Build time (~30-60 seconds)
- Deploy time (~1-3 minutes total)
- Any errors or warnings
- Link to the deployed site

## 📆 Additional Resources

- **🚀 [GitHub Actions Workflow](./.github/workflows/deploy.yml)**: CI/CD pipeline configuration
- **🤖 [Dependabot Config](./.github/dependabot.yml)**: Automated dependency updates
- **🌐 [Live Site](https://seheheiden.github.io)**: See the blog in action
- **📊 [Hugo Documentation](https://gohugo.io/documentation/)**: Official Hugo docs
- **🔧 [GitHub Pages Documentation](https://docs.github.com/en/pages)**: GitHub Pages setup guide

## 🎉 Enjoy Blogging!

Your site is configured for effortless deployment. Focus on creating great content while the automation handles all the technical details. Happy writing! ✍️

