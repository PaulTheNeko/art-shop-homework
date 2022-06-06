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
	{#if !paintings.length}
		<p class="no-images">Brak obrazów</p>
	{/if}
</div>

<style>
	.container {
		display: flex;
		flex-flow: row wrap;
	}
	.no-images {
		font-size: 1.5em;
		color: #474747;
		/* padding: 0 40px; */
		text-align: center;
		width: 100%;
	}
</style>
