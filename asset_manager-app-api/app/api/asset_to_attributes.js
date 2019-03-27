module.exports = (app, db) => {

  
   
    //GET ALL ASSETS & ATTTRIBUTES BY CATEGORY ID *WORKS
    app.get( "/ata/:cid", (req, res) => {(
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
         /*   */

}