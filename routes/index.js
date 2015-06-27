var express = require('express');
var router = express.Router();
var User = require('../models/user');
var middleware = require('../utils/middleware');
var authService = require('../services/auth');

/* GET home page. */
router.get('/', function(req, res) {
	middleware.respond(req, res);
});

router.get('/experiments', function(req, res) {
	middleware.respond(req, res);
});

router.get('/goals', function(req, res) {
	middleware.respond(req, res);
});

router.get('/new-account', function(req, res) {
	middleware.respond(req, res);
});

module.exports = router;
