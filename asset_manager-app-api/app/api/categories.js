module.exports = (app, db) => {

    // GET ALL CATEGORIES  *WORKS
    app.get("/categories", (req, res) =>
        db.categories.findAll({
            categories: ['categories']
        }).then((result) => res.json(result))
    );

    //GET SINGLE CATEGORY  *WORKS
    app.get("/categories/:id", (req, res) =>
        db.categories.findByPk(req.params.id)
            .then((result) => res.json(result))
    );

    // CREATE NEW CATEGORY *WORKS
    app.post("/categories", (req, res) => {
        db.categories.create({
            category_name: req.body.category_name
        }).then((result => res.json(result))
        )
    })

    // EDIT CATEOGRY
    app.put("/categories/:id", (req, res) =>
        db.categories.update({

            category_name: req.body.category_name
        },
            {
                where: {
                    category_id: req.params.id
                }
            }).then((result) => res.json(result))
    );

       /*DELETE FROM CATEGORIES *WORKS
       app.delete("/categories/:id", (req, res) =>
       db.assets.destroy({
           where: {
            category_id: req.params.id
           }
       }).then((result) => res.json(result))
   );
   */
}
