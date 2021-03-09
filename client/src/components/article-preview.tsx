import React, { ReactElement } from "react"
import { Article } from "../data/articles"

interface Props {
  data: {
    article: Article
  }
}

export default function ArticlePreview({ data }: Props): ReactElement {
  const { article } = data

  return (
    <div className="flex flex-col p-4">
      <span className="p-1">{article.title}</span>
      <span className="p-1">{article.subtitle}</span>
      <p className="p-1">{article.previewText}</p>
      <div className="flex justify-between p-2">
        <span>{article.likes}</span>
        <span>{article.likes}</span>
      </div>
    </div>
  )
}
