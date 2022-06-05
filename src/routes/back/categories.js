import sql from 'mysql2/promise';

/** @type {import('./__types/categories').RequestHandler} */
export async function get() {
	let c = await sql.createConnection({
		host: 'localhost',
		user: 'root',
		database: 'art-shop',
	});
	let o = await c.query('select * from paintings');
	return {
		body: o[0],
	};
}
