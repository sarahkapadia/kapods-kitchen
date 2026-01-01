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

3. **View Your Site**
   ```bash
   make dev
   ```
   Visit `http://localhost:4321`

## Adding Posts

**Visual Editor (Recommended):**
- Run `make edit`
- Click "Create New Post"
- Fill in title, description, category, content
- Save!

**Manual (Advanced):**
Create `.md` files in `content/posts/`:

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

## Deploy

**GitHub Pages:**
1. Push code to GitHub
2. Enable GitHub Pages → "GitHub Actions"
3. Done! Site at `https://username.github.io/repo-name`

**Manual:**
```bash
make deploy
```
Upload `dist/` folder to your hosting.

## Commands

```bash
make dev      # View site
make edit     # Add content
make build    # Build for deploy
make deploy   # Build + clean
```

Happy cooking! 👩‍🍳