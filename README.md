# ExpressForDummies

Welcome! This is a Express repository. Well is a repository that is used to guide new joiners on Express JS.

This is plan to be used after the express presentation

## How to install Express

Get here and install it, I will be using linux (ubuntu) to this workshop

Node an NPM:
https://docs.npmjs.com/downloading-and-installing-node-js-and-npm

NVM:
https://tecadmin.net/how-to-install-nvm-on-ubuntu-20-04/

Postman:
You can install it from the ubuntu store. If not, go to their web page.
https://www.postman.com/downloads/

## Step 0

Here you need to create a server with pure js. Dont worry, I will give you the code. Well most of it at least. Just finish the hello.js file and everything will be fine.

## Step 1

Once you install itn you can create a new project using the following command:

```bash
npm init
```

Fill the data as it suits you. You can leave everything as default.

Then you need to install express

```bash
npm install --save-dev express
```

Congrats! You have install your first package! When this happens, a new folder is created in your project called node_modules. This folder contains all the packages you install in your project. You don't need to worry about this folder, just know that it exists. Also A package-lock.json file is created. This file contains all the dependencies of your project. You don't need to worry about this file either.

Now let's start coding something useful. Recreate the hello.js of the previous step in here and move on!

## Step 2

Now that you have express set up lets work on the routes and methods.

You need to create a new file called server.js and copy the code from the previous step.

Then you need to create a new route called "/hello" that returns "Hello World!". Use a GET method.

You can write other routes. I give you free choice. Create a new route and use a different method. At least use GET, POST, PUT and DELETE. Print the info you send or do some logic on it.

PD: Check step 4 to see how to work with the body of the request if you want.

## Step 3

Amazing, now we test. To do this install any free endpoint software. I recommend postman. Get use to the enviroment and test it.

## Step 4

In this step we will work with the body of the request. To do this we need to install a new package called body-parser. This package will help us to parse the body of the request.

```bash
npm install --save-dev body-parser
```

Now we need to import it in our server.js file

```javascript
const bodyParser = require("body-parser");
```

And then we need to use it in our server

```javascript
app.use(bodyParser.json());
```
This will allow us to parse JSON data sent to our server. If we send a POST request with a JSON object, Express will automatically turn this into an object that we can use in our code.

## Step 5
Okey then! Assuming you are now used to the request here comes the fun part. I'm gonna give you the last challenge. Go to the step5 folder launch the db with the "launch-db.sh" script.

The purpose of this step is to create a basic api that communicates with a SQL db, a table named users with a few columns. Check the init.sql script to see the details. You need to create a CRUD api. Good luck!

CRUD => Create, Read, Update, Delete

Create a server.js file and start coding your server!

If you need help here is what I would do:
1. Identify and install the packages in the new npm project (express, body-parser and the db package inside the dockerfile)
2. Once you have express connected configure the db by creating a connection (if you have the correct package install there is a fucntion named "createConnection", the parameters inside are found in the db configuration *wink wink*)
3. When the connection is created you need to "connect". BE CAREFUL FOR THE ERROR HANDLER.
4. Create a new route that returns all the users in the db. Use the GET method.
5. Create a new route that returns a user by id. Use the GET method.
6. Create a new route that creates a new user. Use the POST method.
7. Create a new route that updates a user by id. Use the PUT method.
8. Create a new route that deletes a user by id. Use the DELETE method.

I will show you an example for point 4, but remember to adapt it to points

```javascript
app.get("/users", (req, res) => {
  connection.query("SELECT * FROM users", (err, result) => {
    if (err) {
      res.status(500).send("Error retrieving users from database");
    } else {
      res.status(200).send(result);
    }
  });
});
```

If you dont understand what this "SELECT * FROM users" is, you can check the documentation of the db package. It is a SQL query. You can also check the SQL documentation.

https://learnsql.com/blog/mysql-cheat-sheet/mysql-cheat-sheet-a4.pdf