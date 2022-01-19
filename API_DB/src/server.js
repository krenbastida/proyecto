// Dependencies
const express = require('express')
const cors = require('cors')

//Other dependencies
const { api } = require('./config/envConfig')
const Lib = require('./lib/oracle')

const app = express()

// DB
const lib = new Lib()
// lib.connect()

//Midlewares
app.use(cors('*'))
app.use(express.json())

app.listen(api.port, (err) => {
	if (err) console.error(err)
	else console.log(`=> Server on http://localhost:${api.port}`)
})
