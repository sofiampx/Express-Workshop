# ExpressForDummies

Welcome! This is a Express repository. Well is a repository that is used to guide new joiners on Express JS.

This is plan to be used after the express presentation

## How to install Express

Get here and install it, I will be using linux (ubuntu) to this workshop

Node an NPM:
https://docs.npmjs.com/downloading-and-installing-node-js-and-npm

NVM:
https://tecadmin.net/how-to-install-nvm-on-ubuntu-20-04/

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

PD: Check step 4 to see how to work with the body of the request if you want.-

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
