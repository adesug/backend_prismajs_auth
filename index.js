const express = require('express');
const app = express();
const cors = require ('cors');

const mainRoutes = require ('./src/routes');

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended : false}))
app.use('/', mainRoutes);




app.listen(3000, ()=> {
    console.log("server running at post 3000");
});