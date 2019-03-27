module.exports = (app, db) => {

    //ATTRIBUTE NAMES BY CATEGORY ID
    app.get( "/attributes/:cid", (req, res) => {(

        //ATTRIBUTE NAMES *WORKS
        db.attributes.findAll({
            attributes: ['attribute_name']
        }) 
       .then(results => res.json(results) )
    );
       })


  /*  
      


app.get( "/attributes/:cid", (req, res) => {(
        db.attributes.sequelize.query(`SELECT a.asset_id, a.category_id, attr.attribute_name, ata.attribute_value, ata.attribute_id 
        FROM assets a 
        JOIN asset_to_attributes ata 
        ON ata.asset_id = a.asset_id 
        JOIN attributes attr 
        ON ata.attribute_id = attr.attribute_id 
        WHERE a.category_id = ${req.params.cid}`)
       .then(results => res.json(results) )
    );
       })
       */

    }