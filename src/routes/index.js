const mainRoutes = require ('express').Router();

const bookRoutes = require('./bookRoute');
const authRoutes = require('./authRoute');

mainRoutes.use('/auth', authRoutes);
mainRoutes.use('/books', bookRoutes);



module.exports =  mainRoutes;