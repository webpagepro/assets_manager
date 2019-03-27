module.exports = (app, db) => {

    app.get("/category/attributes/:cid", (req, res) => {
        
            
            //ATTRIBUTE BY CATEGORY *WORKS
          //  db.category_to_attributes.findAll({
                db.category_to_attributes.sequelize.query(`SELECT a.asset_id, a.category_id, attr.attribute_name, ata.attribute_value, ata.attribute_id 
            FROM assets a 
            JOIN asset_to_attributes ata 
            ON ata.asset_id = a.asset_id 
            JOIN attributes attr 
            ON ata.attribute_id = attr.attribute_id 
            WHERE a.category_id = ${req.params.cid}
            ORDER BY a.asset_id`)
           .then(results => res.json(results) )
                //include: [{
               //     model: attributes,
                //    where: { category_id: req.params.cid }
              //  }]

          //  })
          //      .then(results => res.json(results))
      //  );
    })


    //GET ALL ATTTRIBUTES BY CATEGORY ID *WORKS
    app.get("/attributes/category/:cid", (req, res) => {
        db.category_to_attributes.findAll({
            attribute_values: [
                'attribute_values'
            ],

            where: {
                category_id: req.params.cid
            }
        }).then((result) => res.json(result))

    })
    /*
    
    app.get( "/category/attributes/category/:cid", (req, res) => {(
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