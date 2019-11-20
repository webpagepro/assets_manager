# assets_manager
Asset Manager with QR Code Reader

The application will enable any individual with a computer and/or mobile device (with a FREE QR Code Reader app installed) to manage their own personal or business database of hardware inventory (computer or otherwise). Automatically assigns unique ID's upon creating a QR Codes image from an external API. 

<b>Technologies</b>:<br>
React<br>
React Router<br>
MySQL Datatbase<br>
NodeJS<br>
Express Server<br>
Sequalize<br>
Bootswatch 

<b>Depndencies</b>:<br>
sequelize<br>
create-react-app (babel-cli & webpack)<br>
body-parser<br>
react<br>
react-dom<br>
react bootstrap<br>
react-router-dom<br>
mysql2

<b>Dev Tools</b>:<br>
Create-react-app<br>
NPM

<b>Database Tables</b>:<br>
assets

<b>ROUTES</b>:<br>
get('/', index.lookup)<br>
get('/assets', assets.getAll)<br>
get('/assets/:id', assets.getOne)<br>
post('/assets', assets.assetAdd)<br>
patch('/assets/:id', assets.assetEdit)

<b>Input:</b>:<br>
Name (Computer Name)<br>
Attributes<br>
Notes

<b>Output</b>:<br>
Name (Computer Name)<br>
Attributes<br>
Notes
