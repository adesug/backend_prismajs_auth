const jwt = require('jsonwebtoken');

module.exports = {
    checkLogin : (req, res, next ) => {
        const bearerToken = req.header('x-access-token').split(' ')
            
        if(!bearerToken){
            res.send({
                msg : "please login first",
                status : 401
            })
        }else{
            const bearerToken = req.header('x-access-token').split(' ')[1];
            try{
                const decodeToken = jwt.verify(bearerToken, "Adesug");
                req.decodeToken = decodeToken
                next();
            }catch(error){
                res.send({
                    msg: "invalid token",
                    status : 403
                })
            }
        }

    }
}