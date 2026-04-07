import adapter from '@sveltejs/adapter-static'; // 【改这里：把 adapter-auto 换成 adapter-static】
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';

/** @type {import('@sveltejs/kit').Config} */
const config = {
  preprocess: vitePreprocess(),
  kit: {
    adapter: adapter({
      fallback: 'index.html' // 【加这里：开启纯前端 SPA 路由的必须项】
    })
  }
};

export default config;