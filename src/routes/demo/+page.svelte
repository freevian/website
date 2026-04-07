<script lang="ts">
	let count = $state(0);
	let doubleCount = $derived(count * 2);

	function increment() {
		count += 1;
	}

	function decrement() {
		count -= 1;
	}
</script>

<div class="flex min-h-screen flex-col items-center justify-center bg-gray-50 p-4 font-sans">
	<div class="w-full max-w-md rounded-2xl bg-white p-8 shadow-xl">
		<h1 class="mb-2 text-center text-3xl font-bold text-gray-800">Svelte 5 + Tailwind 4</h1>
		<p class="mb-8 text-center text-sm text-gray-500 italic">体验最新的前端技术栈</p>

		<div class="mb-10 flex flex-col items-center justify-center space-y-4">
			<span class="text-6xl font-black text-blue-600 transition-all duration-300" class:scale-110={count % 2 === 0}>
				{count}
			</span>
			<p class="text-sm font-medium text-gray-400 uppercase tracking-widest">
				翻倍结果: <span class="text-gray-600">{doubleCount}</span>
			</p>
		</div>

		<div class="flex gap-4">
			<button
				onclick={decrement}
				class="flex-1 cursor-pointer rounded-xl bg-gray-100 py-4 font-bold text-gray-700 transition-all hover:bg-gray-200 active:scale-95"
			>
				减少
			</button>
			<button
				onclick={increment}
				class="flex-1 cursor-pointer rounded-xl bg-blue-600 py-4 font-bold text-white shadow-lg shadow-blue-200 transition-all hover:bg-blue-700 hover:shadow-blue-300 active:scale-95"
			>
				增加
			</button>
		</div>

		<div class="mt-8 border-t border-gray-100 pt-6">
			<h2 class="mb-3 text-sm font-semibold text-gray-700">技术亮点:</h2>
			<ul class="space-y-2 text-sm text-gray-600">
				<li class="flex items-center gap-2">
					<span class="size-1.5 rounded-full bg-green-500"></span>
					使用 <strong>$state</strong> 声明响应式变量
				</li>
				<li class="flex items-center gap-2">
					<span class="size-1.5 rounded-full bg-green-500"></span>
					使用 <strong>$derived</strong> 处理计算属性
				</li>
				<li class="flex items-center gap-2">
					<span class="size-1.5 rounded-full bg-green-500"></span>
					直接使用 <strong>onclick</strong> 绑定事件
				</li>
			</ul>
		</div>
	</div>

	<a href="/" class="mt-8 text-sm text-blue-500 hover:underline">← 返回首页</a>
</div>
