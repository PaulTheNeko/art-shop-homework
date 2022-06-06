import type { RequestHandler } from './__types/[id]';
import type { RowDataPacket } from 'mysql2';
import type { Painting } from '$lib/paintingtype';
import db from '$lib/db';

export const get: RequestHandler = async ({ params }) => {
	const props = await db.query(
		'select * from paintings where id = ?',
		params.id
	);
	const p = (props[0] as RowDataPacket)[0] as Painting;
	return {
		// status: 200,
		body: { painting: p },
	};
};
