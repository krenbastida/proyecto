// Dependencies
const oracledb = require('oracledb')

// Other dependencies
const { db } = require('../config/envConfig')

class OracleLib {
	constructor() {
		oracledb.outFormat = oracledb.OUT_FORMAT_OBJECT
		this.dbName = db.name
	}

	async post(data) {
		try {
			const connection = await oracledb.getConnection({
				user: db.user,
				password: db.password,
				connectionString: `${db.host}/${db.service}`,
			})

			const result = await connection.execute(
				`insert into
				cliente(cliente_id,nombre,apellido_paterno,apellido_materno,direccion,ocupacion,username,password)
				values (cliente_seq.nextval, :nombre, :apellidoP, :apellidoM, :direccion, :ocupacion, :username, :password)`,
				{
					nombre: { val: data.nombre },
					apellidoP: { val: data.apellidoP },
					apellidoM: { val: data.apellidoM },
					direccion: { val: data.direccion },
					ocupacion: { val: data.ocupacion },
					username: { val: data.username },
					password: { val: data.password },
				}
			)


			console.log(result)

			return result
		} catch (err) {
			console.error(err)
		}
	}
}

module.exports = OracleLib
