const Ff = require('../models/ff.models');


module.exports.menu = function (req,res) {

    console.log("create")
        return new Promise((resolve,reject) => {
            Ff.menu(req).then((data)=>{
                res.status(200).send(data);
            }).catch((err) => {
                res.status(500).send({
                    message:
                        err.message || 'Greška kontaktirajte administratora.'
                });
            })
        })

}


module.exports.dod_naslov_menu = function (req,res) {

    console.log("create")
        return new Promise((resolve,reject) => {
            Ff.dod_naslov_menu(req).then((data)=>{
                res.status(200).send(data);
            }).catch((err) => {
                res.status(500).send({
                    message:
                        err.message || 'Greška kontaktirajte administratora.'
                });
            })
        })

}

module.exports.stavke_menia = function (req,res) {

    console.log("create")
        return new Promise((resolve,reject) => {
            Ff.stavke_menia(req).then((data)=>{
                res.status(200).send(data);
            }).catch((err) => {
                res.status(500).send({
                    message:
                        err.message || 'Greška kontaktirajte administratora.'
                });
            })
        })

}

module.exports.dodaci = function (req,res) {

    console.log("create")
        return new Promise((resolve,reject) => {
            Ff.dodaci(req).then((data)=>{
                res.status(200).send(data);
            }).catch((err) => {
                res.status(500).send({
                    message:
                        err.message || 'Greška kontaktirajte administratora.'
                });
            })
        })

}

module.exports.dod_stavku_menia = function (req,res) {

    console.log("create")
        return new Promise((resolve,reject) => {
            Ff.dod_stavku_menia(req).then((data)=>{
                res.status(200).send(data);
            }).catch((err) => {
                res.status(500).send({
                    message:
                        err.message || 'Greška kontaktirajte administratora.'
                });
            })
        })

}



