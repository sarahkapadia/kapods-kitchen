# Kapods Kitchen - Content Management Commands
.PHONY: help dev build edit new-post clean deploy

# Default target
help:
	@echo "Kapods Kitchen - Content Management"
	@echo ""
	@echo "Available commands:"
	@echo "  make dev          - Start development server"
	@echo "  make build        - Build for production"
	@echo "  make edit         - Open content editor (Tina CMS)"
	@echo "  make new-post     - Create a new blog post"
	@echo "  make clean        - Clean build files"
	@echo "  make deploy       - Build and prepare for deployment"
	@echo ""

# Development server
dev:
	npm run dev

# Production build
build:
	npm run build

# Open Tina CMS for content editing
edit:
	@echo "Starting Tina CMS for content editing..."
	@echo "Visit: http://localhost:4001"
	@echo ""
	npx @tinacms/cli dev

# Create a new blog post
new-post:
	@echo "Creating a new blog post..."
	@echo "1. Run 'make edit' to open Tina CMS"
	@echo "2. Click 'Create New Post' in the Tina interface"
	@echo "3. Fill in title, description, category, and content"
	@echo "4. Save and your post will be created!"
	@echo ""

# Clean build files
clean:
	rm -rf dist/
	rm -rf .astro/

# Build for deployment
deploy: clean build
	@echo "Site built successfully!"
	@echo "Deploy the 'dist/' folder to your web hosting"
	@echo ""
	@echo "For GitHub Pages:"
	@echo "1. Push this code to your GitHub repository"
	@echo "2. Enable GitHub Pages in repository settings"
	@echo "3. Set source to 'GitHub Actions' (or deploy manually)"
	@echo ""
