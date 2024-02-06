import mysql from "mysql2/promise";

const connection = await mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PSWD,
  database: process.env.DB_NAME,
});

connection.addListener("error", (err) => {
  if (err instanceof Error) {
    console.log("connection error:", err);
    throw err;
  }
});

export default connection;
