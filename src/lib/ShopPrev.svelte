<script lang="ts">
	export let src: string;
	export let title: string = '';
	export let id: Number;
</script>

<a href={`/painting/${id}`}>
	<div width="200px" height="300px">
		{#if title}<h3>{title}</h3>{/if}
		<img height="200px" {src} alt="" />
	</div>
</a>

<style>
	div {
		padding: 3px;
		margin: 5px;
		border: 1.5px solid black;
		border-radius: 10px;
	}
	h3 {
		margin: 2px;
	}
	img {
		border-radius: 10px;
	}

	a {
		text-decoration: none;
		color: black;
	}
</style>
