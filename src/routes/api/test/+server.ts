import { error, json } from '@sveltejs/kit';

export async function POST({ request }) {
	const req = await request.json();
	const val = req.test;
	if (val) {
		return json({ result: val });
	}
	throw error(422, { message: 'Validation error' });
}
