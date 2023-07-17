import Fastify from 'fastify';
const fastify = Fastify({
	logger: false
});

fastify.post('/api/test', async (request, reply) => {
	const value = request.body.test;
	if (value) {
		return { result: value };
	}
	reply.status(422).send('Validation failed');
});

const start = async () => {
	try {
		await fastify.listen({ port: 3000 });
	} catch (err) {
		fastify.log.error(err);
		process.exit(1);
	}
};
start();
