const { PrismaClient } = require ('@prisma/client');
const prisma = new PrismaClient();


module.exports = {
    getBooks : (req,res) => {
        prisma.books.findMany()
        .then((data) => {
            res.send ({
                msg: "success",
                status: 200,
                data: data,

            });
        })
        .catch((error) => {
            res.send ({
                msg : "error",
                status : 500,
                error : error
            });
        });
    }
}