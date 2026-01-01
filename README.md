# Kapods Kitchen 🍳

A simple recipe blog. Write recipes, get a beautiful website that works locally and online.

## Get Started

1. **Clone & Install**
   ```bash
   git clone <your-repo-url>
   cd kapods-kitchen
   npm install
   ```

2. **Add Content**
   ```bash
   make edit
   ```
   Opens visual editor at `http://localhost:4001`

4. **Save & Publish**
   ```bash
   make save     # Save your changes
   make publish  # Build & deploy to GitHub Pages
   ```
   Your site updates automatically!

## Adding Posts

**Easy Way (Recommended):**
```bash
make edit
```
- Opens visual editor at `http://localhost:4001`
- Click "Create New Post"
- Fill in title, description, category, content
- Save!

**Manual Way:**
Create `.md` files in `content/posts/` with this format:

```markdown
---
title: "Chocolate Chip Cookies"
description: "Chewy cookies everyone loves"
category: "Recipes"
---

# Chocolate Chip Cookies

## Ingredients
- 2 cups flour
- 1 cup butter
- 1 cup chocolate chips

## Instructions
1. Mix ingredients
2. Bake at 350°F for 12 minutes
```

## Categories
- Recipes
- Cooking Tips
- Kitchen Adventures
- Ingredient Spotlight
- Behind the Scenes

## All Commands

```bash
make help     # Show all commands
make dev      # Start development server
make edit     # Open content editor
make save     # Commit changes to git
make build    # Build for production
make deploy   # Build site
make publish  # Build, save, and push to GitHub
make clean    # Clean build files
```

Happy cooking! 👩‍🍳