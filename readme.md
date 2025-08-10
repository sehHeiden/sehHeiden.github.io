# SeHe's Hugo Blog

[![Deploy Hugo site to GitHub Pages](https://github.com/sehHeiden/sehHeiden.github.io/actions/workflows/deploy.yml/badge.svg)](https://github.com/sehHeiden/sehHeiden.github.io/actions/workflows/deploy.yml)
[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Active-brightgreen)](https://seheheiden.github.io)
[![Hugo](https://img.shields.io/badge/Hugo-0.147.9-blue)](https://gohugo.io/)

A modern Hugo-powered blog with automated GitHub Pages deployment. This repository showcases best practices for static site generation, continuous deployment, and clean documentation.

🌐 **Live Site**: [https://seheheiden.github.io](https://seheheiden.github.io)

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

```
├── .github/workflows/     # GitHub Actions CI/CD pipeline
│   └── deploy.yml         # Automated deployment workflow
├── content/               # Markdown content and blog posts
│   └── posts/             # Blog articles
├── static/                # Static assets (images, files)
├── layouts/               # Custom Hugo templates
├── assets/                # Source assets (SCSS, JS)
├── themes/                # Hugo themes (as submodules)
├── hugo.toml              # Hugo configuration
├── build.ps1              # Windows build script
├── build.sh               # Unix build script
├── DEPLOYMENT.md          # Detailed deployment guide
└── README.md              # This file
```

### Generated Files (Git Ignored)
- `public/` - Built static site
- `resources/` - Hugo cache and processed assets
- `.hugo_build.lock` - Hugo build lock file

## 📄 Technical Specifications

| Component | Version/Details |
|-----------|----------------|
| **Hugo** | 0.147.9 Extended |
| **Node.js** | Latest LTS (for npm dependencies) |
| **Dart Sass** | Latest (via snap) |
| **Deployment** | GitHub Actions + GitHub Pages |
| **Build Time** | ~30-60 seconds |
| **Deploy Time** | ~1-3 minutes total |

## 🛠 Build & Deploy

### Build Locally
- **Windows**: Run `./build.ps1`.
- **Linux/macOS**: Run `./build.sh`.

### Deployment
For automatic deployment, ensure GitHub Pages is set to build from GitHub Actions:
1. Go to your repository settings on GitHub.
2. Navigate to **Pages** and set the source to **GitHub Actions**.
3. Simply push to `main` to deploy.

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

- **CSS/JS Issues**: Check paths and ensure assets are in `static/` directory
- **Build Errors**: Run `hugo --verbose --debug` for detailed diagnostics
- **Deployment Errors**: Check GitHub Actions logs in the "Actions" tab
- **Theme Issues**: Ensure submodules are properly initialized with `git submodule update --init --recursive`

## 📆 Additional Resources

- **📚 [DEPLOYMENT.md](./DEPLOYMENT.md)**: Comprehensive deployment guide
- **🚀 [GitHub Actions Workflow](./.github/workflows/deploy.yml)**: CI/CD pipeline configuration
- **🌐 [Live Site](https://seheheiden.github.io)**: See the blog in action
- **📊 [Hugo Documentation](https://gohugo.io/documentation/)**: Official Hugo docs

## 🎉 Enjoy Blogging!

Your site is configured for effortless deployment. Focus on creating great content while the automation handles all the technical details. Happy writing! ✍️

