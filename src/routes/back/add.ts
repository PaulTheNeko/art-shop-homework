/* eslint-disable @typescript-eslint/no-unused-vars */
import type { RequestHandler } from '@sveltejs/kit';
import fs from 'fs';
import crypto from 'crypto';
import db from '$lib/db';

export const post: RequestHandler = async (ev) => {
	const data = await ev.request.formData();
	const file = (await data.get('file')) as File;
	const title = (await data.get('title')) as string;
	const desc = (await data.get('desc')) as string;

	const buf = new Int8Array(await file.arrayBuffer());
	const hasher = crypto.createHash('sha1');
	hasher.update(buf);
	const hash = hasher.digest('hex');

	const ext = file.name.split('.').pop();
	const filename = `${hash}.${ext}`;

	fs.mkdir('/static/uploads', console.log);
	fs.writeFile(`static/uploads/${filename}`, buf, console.log);

	await db.query(
		'insert into paintings (`title`, `desc`, `image`) values (?,?,?);',
		[title, desc, filename]
	);

	// return { body: };
	return {
		status: 302,
		headers: { location: '/' },
	};
};
