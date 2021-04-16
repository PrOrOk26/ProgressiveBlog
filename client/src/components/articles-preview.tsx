import { Link } from "gatsby"
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
    <div className="flex flex-col items-center">
      <div className="flex flex-col items-center pt-2 pb-2">
        <h1
          style={{
            color: "rgba(41, 41, 41, 1)",
          }}
          className="text-xl font-semibold break-words self-start pl-4"
        >
          Recent articles
        </h1>
        {articles.map(article => (
          <ArticlePreview key={article.title} data={{ article }} />
        ))}
      </div>
      <Link to="/topics" className="cursor-pointer">
        <h4
          style={{
            color: "rgba(41, 41, 41, 1)",
          }}
          className="text-xl font-semibold break-words self-start pl-4"
        >
          More articles
        </h4>
      </Link>
    </div>
  )
}
