import { Request, Response } from 'express'

import * as examService from '../services/examService'

export async function getExams(req: Request, res: Response) {
	try {
		const exams = await examService.getExams()
		res.send(exams)
	} catch (err) {
		console.error(err)
		res.sendStatus(500)
	}
}

export async function createExam(req: Request, res: Response) {

	const exam = req.body

	try {
		const examCreated = await examService.createExam(exam)
		res.send(examCreated)
	} catch (err) {
		console.error(err)
		res.sendStatus(500)
	}
}

export async function queryExams(req: Request, res: Response) {

	const { type, value } = req.params

	try {
		const exams = await examService.queryExams(type, value)
		res.send(exams)
	} catch (err) {
		console.error(err)
		res.sendStatus(500)
	}
}