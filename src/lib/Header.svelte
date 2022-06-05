<script>
	export let color = '#77dd77';
</script>

<div class="header sans-serif" style="background-color: {color}">
	<h1>Sklep z obrazami</h1>
	<a href="/">Index</a>
</div>

<style>
	.header {
		color: white;
		/* padding: 10px 60px; */
		padding: 0;
		/* font-size: 1.5em; */
		display: flex;
	}
	.header h1 {
		flex-grow: 1;
		margin: 40px 60px;
	}
	.header a {
		/* display: inline-block; */
		font-size: 1.2em;
		background-color: #00000090;
		color: white;
		text-decoration: none;
		display: flex;
		justify-content: center;
		align-items: center;
		padding-left: 2em;
		padding-right: 2em;
	}

	a:hover {
		background-color: #488348;
		background-color: #00000066;
		text-decoration: overline;
	}
</style>
