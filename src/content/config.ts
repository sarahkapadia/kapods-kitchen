import { defineCollection, z } from 'astro:content';

// Note: Recipes are now managed by Tina CMS in /content/recipes/
// This Astro collection is kept for compatibility but not used
const recipeCollection = defineCollection({
  type: 'data',
  schema: z.object({
    title: z.string(),
    description: z.string(),
    heroImage: z.string().optional(),
    prepTime: z.number().optional(),
    cookTime: z.number().optional(),
    servings: z.number().optional(),
    ingredients: z.array(z.object({
      amount: z.string().optional(),
      unit: z.string().optional(),
      ingredient: z.string(),
    })).optional(),
    instructions: z.array(z.object({
      step: z.string(),
    })).optional(),
    difficulty: z.enum(['Easy', 'Medium', 'Hard']).optional(),
    category: z.enum(['Breakfast', 'Lunch', 'Dinner', 'Dessert', 'Snack', 'Beverage']).optional(),
    tags: z.array(z.string()).optional(),
  }),
});

export const collections = {
  // Temporarily disabled - using Tina CMS instead
  // 'recipes': recipeCollection,
};
