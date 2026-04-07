<script lang="ts">
	let title = $state("Svelte 5 SPA 演示");
</script>

<div class="min-h-screen bg-slate-50 flex flex-col items-center justify-center p-6 antialiased">
	<!-- 顶部卡片 -->
	<div class="bg-white rounded-3xl shadow-2xl p-10 max-w-2xl w-full text-center border border-gray-100">
		<h1 class="text-5xl font-black text-gray-900 mb-4 bg-clip-text text-transparent bg-linear-to-r from-blue-600 to-indigo-600">
			{title}
		</h1>
		<p class="text-gray-500 text-lg mb-10 leading-relaxed font-light">
			这是一个基于 SvelteKit 的现代单页应用 (SPA)。<br>
			点击下方按钮，观察浏览器地址栏变化，体验<strong>无刷新</strong>极致跳转。
		</p>

		<!-- 各种跳转链接 -->
		<div class="grid grid-cols-1 sm:grid-cols-2 gap-6">

			<!-- 1. 核心功能入口 (主按钮风格) -->
			<a href="/demo" class="group relative flex flex-col items-center justify-center p-6 bg-blue-600 rounded-2xl text-white font-bold transition-all hover:bg-blue-700 hover:shadow-xl active:scale-95 overflow-hidden">
				<div class="absolute inset-0 bg-white opacity-0 group-hover:opacity-10 transition-opacity"></div>
				<span class="text-2xl mb-1">🚀 交互演示页</span>
				<span class="text-xs opacity-70 font-normal">进入 Counter 演示</span>
			</a>

			<!-- 2. 二级跳转 (深色风格) -->
			<a href="/demo" class="flex flex-col items-center justify-center p-6 bg-slate-800 rounded-2xl text-white font-bold transition-all hover:bg-slate-900 hover:shadow-xl active:scale-95">
				<span class="text-2xl mb-1">🛠️ 工具箱</span>
				<span class="text-xs opacity-70 font-normal">测试单页路由路径</span>
			</a>

			<!-- 3. 文字链接 (极简风格) -->
			<a href="/demo" class="flex items-center justify-center p-4 border-2 border-dashed border-gray-200 rounded-2xl text-gray-400 font-medium hover:border-blue-400 hover:text-blue-500 transition-colors">
				📑 查阅接口文档 →
			</a>

			<!-- 4. 幽灵按钮 (描边风格) -->
			<button onclick={() => window.location.href='/demo'} class="p-4 border-2 border-blue-600 rounded-2xl text-blue-600 font-bold hover:bg-blue-50 transition-colors active:scale-95">
				JS 逻辑跳转
			</button>
		</div>

		<!-- 底部状态 -->
		<div class="mt-12 flex items-center justify-center gap-4 text-[10px] text-gray-400 uppercase tracking-widest font-semibold">
			<span class="flex items-center gap-2">
				<span class="w-2.5 h-2.5 bg-green-500 rounded-full animate-pulse shadow-[0_0_8px_rgba(34,197,94,0.6)]"></span>
				SPA Router Active
			</span>
			<span class="w-px h-3 bg-gray-200"></span>
			<span>Svelte 5 Runes</span>
			<span class="w-px h-3 bg-gray-200"></span>
			<span>Tailwind 4</span>
		</div>
	</div>

	<footer class="mt-12 text-gray-400 text-xs text-center flex flex-col gap-1">
		<p>© {new Date().getFullYear()} SvelteKit SPA Demo</p>
		<p class="italic">Powered by Claude Code Assistant</p>
	</footer>
</div>
