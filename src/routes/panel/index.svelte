<script>
	import AppHeader from '$lib/Header.svelte';
</script>

<AppHeader color="#310f87" />

<main>
	<p>Witaj w sekretnym panelu.</p>
	<div class="options">
		<a href="/panel/add">Dodaj obraz</a>
	</div>
</main>

<style>
	main {
		margin: 2em 5em;
		padding: 20px;
		border: 2px solid black;
	}
</style>
