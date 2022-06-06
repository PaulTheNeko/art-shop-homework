<script lang="ts">
	import AppHeader from '$lib/Header.svelte';
	let files: FileList;
	let avatar: any;
</script>

<AppHeader color="#310f87" />

<main>
	<form action="/back/add" method="post" enctype="multipart/form-data">
		<input type="image" src={avatar} alt="" /><br />
		<input type="file" name="file" id="file" bind:files on:change /><br />
		tytul <input type="text" name="title" id="title" /><br />
		opis <br /><textarea name="desc" id="desc" cols="30" rows="10" /><br />
		<input type="submit" value="Dodaj" />
	</form>
</main>

<style>
	main {
		margin: 2em 5em;
		padding: 20px;
		border: 2px solid black;
	}
</style>
