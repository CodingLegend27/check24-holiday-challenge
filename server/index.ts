import dotenv from "dotenv";
import express from "express";

const admin = require("firebase-admin");
const db = require("./db");

dotenv.config();
const port = process.env.SERVER_PORT;

const app = express();

app.get("/", (req: any, res: any) => {
  res.send("hello World");
});

app.listen(port, () => {
  console.log(`server start at http://localhost:${port}`);
});
