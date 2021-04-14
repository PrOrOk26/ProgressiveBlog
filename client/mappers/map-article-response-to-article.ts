import { Article, ArticleResponse } from "../src/data/articles"

export function mapArticleResponseToArticle(
  response: ArticleResponse
): Article {
  let created_at: Date = new Date()
  let updated_at: Date = new Date()

  try {
    created_at = new Date(response.created_at)
    updated_at = new Date(response.updated_at)
  } catch (e) {
    console.error("Couldn't parse a date response for an article")
  }

  return {
    ...response,
    created_at,
    updated_at,
  }
}
