<script context="module" lang="ts">
	import type { Load } from '@sveltejs/kit';

	export const load: Load = async ({ fetch }) => {
		const res = await fetch('back/paintings');
		return {
			status: res.status,
			props: { paintings: await res.json() },
		};
	};
</script>

<script>
	import AppHeader from '$lib/Header.svelte';
	import ShopPrev from '$lib/ShopPrev.svelte';
	import Category from '$lib/Category.svelte';
	import AllPaintings from '$lib/AllPaintings.svelte';
	export let paintings;
</script>

<AppHeader />

<main>
	<AllPaintings />
</main>
