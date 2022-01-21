// Dependencies
const express = require('express')
const cors = require('cors')

//Other dependencies
const { api } = require('./config/envConfig')
const routes = require('./routes')
const Lib = require('./lib/oracle')

const app = express()

//Midlewares
app.use(cors('*'))
app.use(express.json())

// routes
app.use('/api', routes)



app.listen(api.port, (err) => {
	if (err) console.error(err)
	else console.log(`=> Server on http://localhost:${api.port}`)
})
