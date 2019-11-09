# assets_manager
Asset Manager with QR Code Reader

The application will enable any individual with a computer and/or mobile device (with a FREE QR Code Reader app installed) to manage their own personal or business database of hardware inventory (computer or otherwise). Items can be manaually assigned unique ID's or can be assigned unique QR Codes for optimal efficient asset tracking. Important to note: this application is intended only for reading QR Code images, at this point. There exists many FREE options for creating such images online. Future versions of this software will include the ability to generate your QR Code images, as well. Full Stack Technical

Technologies:

React
React Router
MySQL Datatbase
NodeJS
Express Server
Sequalize
Bootstrap 4

Depndencies

sequelize
create-react-app (babel-cli & webpack)
body-parser
react
react-dom
react bootstrap
react-router-dom
mysql2

Dev Tools

Create-react-app
NPM

Database Tables

assets
asset_to_attributes
asset_to_notes
attributes
categories
category_to_attributes

ROUTES 

get('/', index.lookup);
get('/assets', assets.getAll);
get('/assets/:id', assets.getOne);
post('/assets', assets.assetAdd);
patch('/assets/:id', assets.assetEdit);
patch('/assets/:id', assets.assetEdit);
delete('/assets/:id', assets.removeAssets);
post('/categories', categories.categoryAdd);
patch('/categories/:id', categories.categoryEdit);

Input

Name (Computer Name)
User
Department
Processor
Storage
RAM Test
HDD Test
Date Tested
Notes

Output

Name (Computer Name)
User
Department
Processor
Storage
RAM Test
HDD Test
Date Tested
Notes
Comprehensive

Task Order List

Install Create React App
    Remove excess files
    Create components directory
Install MySQL
    Configure Sequalize
    Create migrations & seeds
ComponentDidMount
Server-side Configurations
    server.js
Add Server Routes
Build Form
    Input components
    Axios / Fetch CRUD functions
Test CRUD
Aesthetics
