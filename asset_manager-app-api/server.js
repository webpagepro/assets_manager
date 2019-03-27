const express = require("express");
const bodyParser = require("body-parser");
const faker = require("faker");
const times = require("lodash.times");
const random = require("lodash.random");
const cors = require("cors");
const db = require("./models");
const apiAssets = require("./app/api/assets");
const apiCategories = require("./app/api/categories");
const apiAttributes = require("./app/api/attributes");
const apiAssetToAttributes = require("./app/api/asset_to_attributes");
const apiCategoryToAttributes = require("./app/api/category_to_attributes");

const app = express();
app.use(bodyParser.json());
app.use(cors());
//app.use(express.static("app/public"));

apiAssets(app, db);
apiCategories(app, db);
apiAttributes(app, db);
apiAssetToAttributes(app, db);
apiCategoryToAttributes(app, db);
/*
db.sequelize.sync().then(() => {
  // populate categories table with dummy data
  db.categories.bulkCreate(
    times(10, () => ({
      category_id: faker.name.category_id(),
      category_name: faker.name.category_name()
    }))
  );
  // populate assets table with dummy data
  db.assets.bulkCreate(
    times(10, () => ({
      asset_id: faker.lorem.sentence(),
      category_id: faker.lorem.paragraph()
    }))
  );
  */
  app.listen(8080, () => console.log("App listening on port 8080!"));
//});
