const sql = require("../../db/konekcija").pool;
const express = require('express');
const router = express.Router();

 const Ff = {};

Ff.menu = data => {

    let sqlQuery = `SELECT * FROM meni`

      
    return new Promise((resolve, reject) => {
        sql.query(sqlQuery,
            (error, rows, fields) => {
                if (error) {
                    reject(error);
                    return 1;
                } else {
                    resolve(rows);
                }
            });
       });
};


Ff.dod_naslov_menu = data => {
    
    const naslov = data.body.naslov;
    const naslovEng = data.body.naslovEng;
    //console.log(data.body)
    const sqlQuery = `INSERT INTO meni  (naziv,id_objekta,naziv_eng,validan)  VALUES  ('${naslov}',88,'${naslovEng}',1)`;  
      
    return new Promise((resolve, reject) => {
        sql.query(sqlQuery,
            (error, rows, fields) => {
                if (error) {
                    reject(error);
                    return 1;
                } else {
                    resolve({poruka: "uspesno"});
                }
            });
       });
};




Ff.stavke_menia = data => {
    
    const id_menia = data.body.id_menia;
    let sqlQuery = `SELECT * FROM meni_stavke WHERE id_menia =${id_menia}`

      
    return new Promise((resolve, reject) => {
        sql.query(sqlQuery,
            (error, rows, fields) => {
                if (error) {
                    reject(error);
                    return 1;
                } else {
                    resolve(rows);
                }
            });
       });
};



Ff.dodaci = data => {
    
    let sqlQuery = `SELECT * FROM dodaci`

      
    return new Promise((resolve, reject) => {
        sql.query(sqlQuery,
            (error, rows, fields) => {
                if (error) {
                    reject(error);
                    return 1;
                } else {
                    resolve(rows);
                }
            });
       });
};



Ff.dod_stavku_menia = data => {
    
    const naziv = data.body.naziv;
    const tezina = data.body.tezina;
    const obim = data.body.obim;
    const cena = data.body.cena;
    const opis = data.body.opis;
    const id_menia = data.body.id_menia;
    const nizDodataka = data.body.nizDodataka;

    const sqlQuery = `INSERT INTO meni_stavke  (id_menia,naziv,tezina,obim,cena,opis,validan)  VALUES  (${id_menia},'${naziv}','${tezina}','${obim}','${cena}','${opis}',1)`;  
      
    return new Promise((resolve, reject) => {
        sql.query(sqlQuery,
            (error, rows, fields) => {
                if (error) {
                    reject(error);
                    return 1;
                } else {
                    
                

                    nizDodataka.map((element) => (
                        sql.query(`INSERT INTO meni_stavke_doadci (id_meni_stavke,id_dodataka) VALUES (${rows.insertId},${element})`,
                            (error, rows, fields) => {
                                if (error) {
                                    reject(error);
                                    return 1;
                                } else {
                                    resolve({poruka: "uspesno"});
                            }})
                        
                        ))
                    
                    
                }
            });
       });
};

module.exports = Ff;