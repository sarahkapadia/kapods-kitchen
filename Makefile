# Kapods Kitchen - Content Management Commands
.PHONY: help dev build edit new-post clean save deploy publish

# Default target
help:
	@echo "Kapods Kitchen - Content Management"
	@echo ""
	@echo "Available commands:"
	@echo "  make dev          - Start development server"
	@echo "  make build        - Build for production"
	@echo "  make edit         - Open content editor (Tina CMS)"
	@echo "  make new-post     - Instructions for creating new posts"
	@echo "  make save         - Commit all changes to git"
	@echo "  make deploy       - Build site for production"
	@echo "  make publish      - Build, commit, and push to GitHub"
	@echo "  make clean        - Clean build files"
	@echo ""

# Development server
dev:
	yarn dev

# Production build
build:
	yarn build

# Open Tina CMS for content editing
edit:
	@echo "Starting Tina CMS for content editing..."
	@echo "Visit: http://localhost:4001"
	@echo ""
	yarn dev

# Create a new blog post
new-post:
	@echo "Creating a new blog post..."
	@echo "1. Run 'make edit' to open Tina CMS"
	@echo "2. Click 'Create New Post' in the Tina interface"
	@echo "3. Fill in title, description, category, and content"
	@echo "4. Save and your post will be created!"
	@echo ""

# Save changes to git
save:
	@echo "Saving your changes..."
	@git add .
	@if git diff --cached --quiet; then \
		echo "No changes to commit."; \
	else \
		git commit -m "Update content and site changes - $(date '+%Y-%m-%d %H:%M')"; \
		echo "✅ Changes saved to git!"; \
	fi

# Build for deployment
deploy: clean
	@echo "Building site for production..."
	NODE_ENV=production yarn build
	@echo "✅ Site built successfully!"
	@echo "Ready for deployment"

# Build, commit, and push everything
publish: deploy save
	@echo "Pushing to GitHub..."
	git push origin main
	@echo "🚀 Site published! GitHub Pages will update automatically."
	@echo "Visit: https://sarahkapadia.github.io/"

# Clean build files
clean:
	@echo "Cleaning build files..."
	rm -rf dist/
	rm -rf .astro/
