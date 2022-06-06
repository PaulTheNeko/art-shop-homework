<script lang="ts">
	import AppHeader from '$lib/Header.svelte';
	import type { Painting } from '$lib/paintingtype';
	import { onMount } from 'svelte';

	export let painting: Painting;
</script>

<AppHeader />

<main>
	<h2>{painting.title}</h2>
	<img src={`/uploads/${painting.image}`} width="100%" alt="Obraz" />
	<p>{painting.desc}</p>
</main>

<style>
	main {
		margin: 2em 5em;
		padding: 20px;
		border: 2px solid black;
	}
	p {
		white-space: pre-line;
	}
</style>
