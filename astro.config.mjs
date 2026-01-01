// @ts-check
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  output: 'static',
  site: 'https://sarahkapadia.github.io',
  base: process.env.NODE_ENV === 'development' ? '/' : '/kapods-kitchen',
  integrations: [],
});
