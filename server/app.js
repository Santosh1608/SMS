import express from "express";
import "dotenv/config.js";
import cors from "cors";

import "./config/db.js";
import courseRoutes from "./routes/course.js";
import { createLogger } from "./middlewares/logger.js";

const app = express();
app.use(
  cors({
    origin: "http://localhost:3000",
    credentials: true,
  })
);

app.use(express.json());

app.use(createLogger);

app.use("/api/courses", courseRoutes);

export default app;
