<script lang="ts">
	import AppHeader from '$lib/Header.svelte';
	let files: FileList;
	let avatar: any;
	const change = (e: any) => {
		let image = e.target.files[0];
		let reader = new FileReader();
		reader.onload = (e) => {
			if (e.target) avatar = e.target.result;
		};
		reader.readAsDataURL(image);
	};
</script>

<AppHeader color="#310f87" />

<main>
	<form action="/back/add" method="post">
		<input type="image" src={avatar} alt="" /><br />
		<input type="file" name="file" id="file" bind:files on:change /><br />
		tytul <input type="text" name="title" id="title" /><br />
		opis <br /><textarea name="desc" id="desc" cols="30" rows="10" /><br />
	</form>
</main>

<style>
	main {
		margin: 2em 5em;
		padding: 20px;
		border: 2px solid black;
	}
</style>
