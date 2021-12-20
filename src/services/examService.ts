import { getRepository } from 'typeorm'

import Exam from '../entities/Exam'

export async function getExams() {
	const exams = await getRepository(Exam).find({})

	return exams
}

export async function createExam(exam: Exam) {

	const createdExam = await getRepository(Exam).insert(exam);

	const result = await getRepository(Exam).find({
		where: {
			id: createdExam.identifiers[0].id
		}
	})

	return result
}

export async function queryExams(type: string, value: string) {

	const query: any = {}
	query[type] = value

	const exams = await getRepository(Exam).find({
		where: query
	})

	return exams
}
