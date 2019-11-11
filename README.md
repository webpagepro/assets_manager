# assets_manager
Asset Manager with QR Code Reader

The application will enable any individual with a computer and/or mobile device (with a FREE QR Code Reader app installed) to manage their own personal or business database of hardware inventory (computer or otherwise). Automatically assigns unique ID's upon creating a QR Codes image from an external API. 

Technologies:
React
React Router
MySQL Datatbase
NodeJS
Express Server
Sequalize
Bootswatch 

Depndencies:
sequelize
create-react-app (babel-cli & webpack)
body-parser
react
react-dom
react bootstrap
react-router-dom
mysql2

Dev Tools:
Create-react-app
NPM

Database Tables
assets

ROUTES:
get('/', index.lookup)
get('/assets', assets.getAll);
get('/assets/:id', assets.getOne);
post('/assets', assets.assetAdd);
patch('/assets/:id', assets.assetEdit);

Input:
Name (Computer Name)
Attributes
Notes

Output:
Name (Computer Name)
Attributes
Notes
