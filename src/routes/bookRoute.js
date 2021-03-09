const bookRoutes = require('express').Router();
const bookController = require('../controller/bookController');
const authMidlleware = require('../helpers/authMiddleware');
const authRoutes = require('./authRoute');


bookRoutes.get('/', authMidlleware.checkLogin, bookController.getBooks);

module.exports = bookRoutes;