<script lang="ts">
	export const name: string = '';
	import ShopPrev from '$lib/ShopPrev.svelte';
	let paintings: Array<any> = [];
	import { onMount } from 'svelte';
	onMount(async () => {
		paintings = await (await fetch('/back/paintings')).json();
	});
</script>

<div class="container">
	{#each paintings as painting}
		<ShopPrev
			id={painting.id}
			title={painting.title}
			src={`/uploads/${painting.image}`}
		/>
	{/each}
</div>

<style>
	.container {
		display: flex;
		flex-flow: row wrap;
	}
</style>
