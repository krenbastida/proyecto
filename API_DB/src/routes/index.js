// Dependencies
const express = require('express')

// Other dependencies
const Lib = require('../lib/oracle')

const router = new express.Router()
const lib = new Lib()

router.post(
	'/',
	(req, res, next) => {
    try{
      const data = req.body
      const response = lib.post(data)
      res.status(201).send({succes: true, data})
    }catch(err){
      console.error(err)
    }
  }
)

module.exports =  router
