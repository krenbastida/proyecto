// Dependencies
const oracledb = require('oracledb')

// Other dependencies
const { db } = require('../config/envConfig')

class OracleLib {
	constructor() {
		oracledb.outFormat = oracledb.OUT_FORMAT_OBJECT
		this.dbName = db.name
		this.connection = this.connect()
	}

	async connect() {
		try {
			const connection = await oracledb.getConnection({
				user: db.user,
				password: db.password,
				connectionString: `${db.host}/${db.service}`,
			})
			return connection
		} catch (err) {
			console.error(err)
		}
	}

	async get() {
		try {
			const result = await connection.execute(
				`SELECT *
        FROM departments
        WHERE manager_id = :id`
			)
			console.log(result.rows)

			return result
		} catch (err) {
			console.error(err)
		}
	}
}

module.exports = OracleLib
