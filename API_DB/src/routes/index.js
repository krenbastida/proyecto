// Dependencies
const express = require('express')

// Other dependencies
const Lib = require('../lib/oracle')

const router = new express.Router()
const lib = new Lib()

router.post(
	'/',
	async (req, res, next) => {
    try{
      console.log(req.body)
      const data = req.body
      const response = lib.post(data)
      if (response) 
        res.status(201).send({succes: true, response})
      else
        res.status(400).send({succes: false})
    }catch(err){
      console.error(err)
    }
  }
)

module.exports =  router
