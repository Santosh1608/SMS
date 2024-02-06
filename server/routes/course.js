import Router from "express";
import { listCourses } from "../controllers/course.js";
const router = Router();

router.get("/", listCourses);

export default router;
