import { Entity, Column, PrimaryGeneratedColumn } from 'typeorm'

@Entity()
export class Post {
  @PrimaryGeneratedColumn()
  id: number

  @Column()
  title: string

  @Column({ type: 'date', name: 'preview_text' })
  previewText: Date

  @Column({ type: 'date' })
  date: Date

  @Column({ type: 'date', name: 'read_length' })
  readLength: Date

  @Column()
  isPublished: boolean
}
