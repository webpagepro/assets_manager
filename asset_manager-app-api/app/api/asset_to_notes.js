/*

SELECT notes
                       FROM asset_to_notes
                       WHERE asset_id = ?

                      UPDATE tags.asset_to_notes
               SET notes = ? WHERE asset_id = ? */


// ASSET & ATTRIBUTES BY ID

module.exports = (app, db) => {

    app.get("/assets/notes/:id", (req, res) =>

        db.asset_to_notes.findAll({


            where:
                [{ asset_id: req.params.id }]

        })
            .then(results => res.json(results))
    )
}


    // CREATE NEW NOTES *WORKS
    app.post("/assets/notest/:id", (req, res) => {
        db.asset_to_notes.create({
            asset_id: req.params.id,
            notes: req.body.notes
        }).then((result => res.json(result))
        )
    })

// EDIT NOTES BY ASSET ID
app.put("/assets/notest/:id", (req, res) =>
    db.asset_to_notes.update({

        notes: req.body.notes
    },
        {
            where: {
                asset_id: req.params.id
            }
        }).then((result) => res.json(result))
);
