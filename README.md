# Kapods Kitchen 🍳

A simple recipe blog with beautiful placeholder images. Add your own recipes and content easily!

## Quick Start

### 1. Get the code
```bash
git clone <your-repo-url>
cd kapods-kitchen
npm install
```

### 2. Start writing content
```bash
make new-post
```

This opens Tina CMS where you can create new posts with a visual editor.

### 3. See your site
```bash
make dev
```
Visit `http://localhost:4321` to see your site.

## Adding Content

### Option 1: Visual Editor (Easiest)
```bash
make edit
```
- Opens Tina CMS at `http://localhost:4001`
- Click "Create New Post"
- Add title, description, category, and content
- Save and you're done!

### Option 2: Edit Files Directly
Create new `.md` files in `content/posts/` with this format:

```markdown
---
title: "Your Recipe Title"
description: "Brief description of your recipe"
category: "Recipes"
---

# Your Recipe Title

Your recipe content here...

## Ingredients
- Ingredient 1
- Ingredient 2

## Instructions
1. Step one
2. Step two
```

## Available Commands

```bash
make help         # Show all available commands
make dev          # Start development server
make build        # Build for production
make edit         # Open content editor (Tina CMS)
make new-post     # Instructions for creating new posts
make clean        # Clean build files
make deploy       # Build and prepare for deployment
```

Or use npm commands directly:

```bash
npm run dev       # Start development server
npm run build     # Build for production
```

## Categories

Choose from these categories for your posts:
- **Recipes** - Cooking recipes
- **Cooking Tips** - Kitchen advice
- **Kitchen Adventures** - Personal stories
- **Ingredient Spotlight** - Focus on specific ingredients
- **Behind the Scenes** - Behind-the-scenes content

## Deployment

### GitHub Pages (Recommended)
1. Push your code to GitHub
2. Enable GitHub Pages in repository settings
3. Set source to "GitHub Actions"
4. Your site will be at `https://yourusername.github.io/repository-name`

### Manual Deploy
```bash
make deploy
```
Then upload the `dist/` folder to your web hosting.

## Need Help?

- Content gets saved as `.md` files in `content/posts/`
- Images use automatic placeholders from placehold.co
- All posts show up automatically on your homepage
- Visit `/admin` on your live site to edit content online

Happy cooking! 👩‍🍳