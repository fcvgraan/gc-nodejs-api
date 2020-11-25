# rh-gc-api
nodejs google cloud function api for CRUD operations

* you can deploy the code to google cloud with the deploy.sh script, follow deployment instructions in deployment instructions.txt

* MongoDB collections are stored in mongo-data/. You can basically use any data you want in the form of collections with entries that have id and value fields

* MongoDB collections can be imported to MongoDB Atlas once you've created a free cluster at https://www.mongodb.com/cloud/atlas/register
Remeber to update the dbConnectionUrl in database.js with the one provided by MongoDB Atlas

* Cloud function source code doesn't need express, the REST methods are abstracted to a parameter in the request body and I control the update logic at the level of  the MongoDB driver, and it works with post or get requests

* There are postman tests in the test folder, with instructions