// @ts-check
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  output: 'static',
  site: process.env.CI ? 'https://sarahkapadia.github.io' : undefined,
  base: process.env.CI ? '/kapods-kitchen' : undefined,
  integrations: [],
});
