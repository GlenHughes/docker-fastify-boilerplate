import Fastify from "fastify"
import indexRoute from "./routes/index.js"

const fastify = Fastify({
  logger: true
})

fastify.register(indexRoute)

fastify.listen({ port: 3000, host: "0.0.0.0" }, (err, address) => {
  if (err) {
    console.error(err)
    process.exit(1)
  }
  console.log(`Server listening at ${address}`)
})