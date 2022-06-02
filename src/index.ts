import mysql = require("mysql");
import express = require("express");

var app = express();

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "art-shop",
});

db.connect((err) => {
  if(err) throw err;
  console.log("Connected to database");
})