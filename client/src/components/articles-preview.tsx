import React, { ReactElement } from "react"
import { Article } from "../data/articles"
import ArticlePreview from "./article-preview"

interface Props {
  data: {
    articles: Article[]
  }
}

export default function ArticlesPreview({ data }: Props): ReactElement {
  const { articles } = data

  return (
    <div className="flex flex-col pb-2">
      {articles.map(article => (
        <ArticlePreview key={article.title} data={{ article }} />
      ))}
    </div>
  )
}
