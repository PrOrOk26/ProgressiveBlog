import { IGatsbyImageData } from "gatsby-plugin-image"
import {
  FileNode,
  IGatsbyImageDataParent,
} from "gatsby-plugin-image/dist/src/components/hooks"

export type Article = {
  id: number
  title: string
  subtitle: string
  section: Section[]
  author: Author
  avatar?: Image
  created_at: Date
  updated_at: Date
  topic?: Topic
}

export type ImageDataLike = FileNode | IGatsbyImageDataParent | IGatsbyImageData

export type Image = {
  alt?: string
  caption?: string
  media: ImageDataLike
}

export type ArticleResponse = Omit<Article, "created_at" | "updated_at"> & {
  created_at: string
  updated_at: string
}

export type Author = {
  id: number
  firstname: string
  lastname: string
}

export type Section = {
  id: number
  title: string
  content: string
}

export type Topic = {
  id: number
  name: string
  avatar?: ImageDataLike
}

export type TopicResponse = Omit<Topic, "id"> & {
  strapiId: number
}

type ArticlesEdge = {
  node: ArticleResponse
}

export type ArticlesResponse = {
  allStrapiArticle: {
    edges: ArticlesEdge[]
  }
}

type TopicEdge = {
  node: TopicResponse
}

export type TopicsResponse = {
  allStrapiTopic: {
    edges: TopicEdge[]
  }
}

export type AboutBlog = {
  content: string
}

type AboutBlogEdge = {
  node: AboutBlog
}

export type AboutBlogQueryResponse = {
  edges: AboutBlogEdge[]
}

export type AboutAuthor = {
  id: string
  strapiId: number
  personalInfo: {
    email: string
    linkedin: string
    twitter: string
    github: string
  }
  content: string
}

type AboutAuthorEdge = {
  node: AboutAuthor
}

export type AboutAuthorQueryResponse = {
  edges: AboutAuthorEdge[]
}
