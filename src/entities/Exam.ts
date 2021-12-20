import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm'

@Entity('exams')
export default class Exam {
	@PrimaryGeneratedColumn()
	id: number

	@Column()
	name: string

	@Column()
	category: string

	@Column()
	period: string

	@Column()
	professor: string

	@Column()
	discipline: string

	@Column()
	link: string

}
