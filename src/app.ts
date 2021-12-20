import "./setup";

import express from "express";
import cors from "cors";
import "reflect-metadata";

import connectDatabase from "./database";

import * as examController from "./controllers/examController";

const app = express();
app.use(cors());
app.use(express.json());

app.get('/exams', examController.getExams)
app.post('/send', examController.createExam)
app.get('/exams/:type/:value', examController.queryExams)

export async function init() {
	await connectDatabase();
}

export default app;
