const { PrismaClient } = require ('@prisma/client');
const prisma = new PrismaClient();
const bcrypt = require ('bcrypt');
const jwt = require ("jsonwebtoken");


module.exports = {
    signUp : (req, res) => {
        const { body } = req;
        const saltRounds = 10;

        // saltRounds = Math.floor(Math.random() * 10) + 1;
        console.log("salt round",saltRounds);
        bcrypt.hash(body.password, saltRounds, (err, hassPassword) => {
            const newBody = {
                ...body, password : hassPassword
            }
            prisma.users.create({
                data : newBody
            })
            .then((data) => {
                res.send({
                    msg : 'success sign up',
                    status : 200,
                    data : data
                })
            })
            .catch((error) => {
                res.send({
                    msg : 'failed sign up',
                    status : 500,
                    error : error
                })
            })
        });
        
    },
    signIn : (req, res) => {
        const { body } = req;
        prisma.users.findFirst({
            where : {
                email : body.email
            }
        })
        .then((data) => {
            if (!data) {
                res.send({
                    msg : "Error Login, User not Found",
                    status: 404
                })
            }else{
                const isValid = bcrypt.compareSync(body.password, data.password);
                if (!isValid) {
                    res.send({
                        msg : "ErrorLogin",
                        status : 403,
                        error : "Password is Wrong"
                    })
                }else{
                    const payload = {
                        // data yang dibawa ke token
                        name : data.name,
                        username : data.username,
                        email : data.email
                    }

                    const token = jwt.sign(payload, "Adesug", {
                        expiresIn : 86400 //detik dalm sehari
                    });

                    delete data.password

                    const newData = {
                        ...data,
                        token : token
                    }

                    res.send({
                        msg : "success login",
                        status : 200,
                        data : newData
                    })
                }
            }
        })
        .catch((err) => {
            res.send({
                msg : "Error",
                status : 500,
                error : err
            })
        })
    }
}