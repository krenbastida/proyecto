require('dotenv/config')

// API ENV variables
const api = {
	port: process.env.PORT || 3000,
}

// DB ENV variables
const db = {
	user: process.env.DB_USER || '',
	password: process.env.DB_PASSWORD || '',
	host: process.env.DB_HOST || '',
	service: process.env.DB_SERVICE || '',
	name: process.env.DB_NAME || '',
}

module.exports = { api, db }
