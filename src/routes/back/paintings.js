import db from '$lib/db';

/** @type {import('./__types/paintings').RequestHandler} */
export async function get() {
	let o = await db.query('select * from paintings');
	return {
		body: o[0],
	};
}
