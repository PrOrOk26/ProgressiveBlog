import { Article, Topic } from "../types"

export enum BlogRoutes {
  HOME = "/",
  TOPICS = "/topics",
  AUTHOR = "/author",
  ABOUT = "/about",
  ARTICLES = "/articles",
}

export function createArticleRoute(article: Article): string {
  return `${BlogRoutes.ARTICLES}/${article.id}`
}

export function createTopicRoute(topic: Topic): string {
  return `${BlogRoutes.TOPICS}/${topic.id}`
}
