var express = require('express');
var router = express.Router();
var Account = require('../models/account');
var middleware = require('../utils/middleware');

router.post('/api/account', function(req, res) {
	var account = new Account();
	account.apiToken = req.body.apiToken || '';
	account.name = req.body.name || '';
	account.userId = req.body.userId || '';
	account.save(function(err){
		if(!err){
			res.json({success:'it worked!'});	
		}else{
			res.json({error:err});
		}
	});
});

router.get('/api/account', function(req, res) {
	var config = req.query;
	
});

module.exports = router;