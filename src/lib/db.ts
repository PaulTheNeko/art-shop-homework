import sql from 'mysql2/promise';

export const db = await sql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'art-shop',
});

export default db;
