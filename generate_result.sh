#!/bin/bash

npm i

npm run build

echo "# Sveltekit API Routes vs Fastify Routes" > README.md

echo 'Testing Sveltekit API Routes'
echo "## Sveltekit" >> README.md
echo "\`\`\`" >> README.md
nohup npx vite preview > /dev/null 2>&1 &
serverPID=$!
sleep 5
echo "serverPID: ${serverPID}"
ps -Flww -p $serverPID
ab -n 20000 -c 20 -p input.json -T application/json http://localhost:4173/api/test >> README.md
echo "\`\`\`" >> README.md
kill $serverPID
ps -Flww -p $serverPID


echo "Testing fastify API Routes"
echo "## Fastify" >> README.md
echo "\`\`\`" >> README.md
nohup node fastify.js > /dev/null 2>&1 &
serverPID2=$!
echo "serverPID2: ${serverPID2}"
ps -Flww -p $serverPID2
sleep 5
ab -n 20000 -c 20 -p input.json -T application/json http://localhost:3000/api/test >> README.md
echo "\`\`\`" >> README.md
kill $serverPID2

# Add two newlines for markdown line breaks
#sed -i 's/$/  /g' README.md