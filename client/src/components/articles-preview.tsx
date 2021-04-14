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
            fontSize: "36px",
            lineHeight: "44px",
          }}
          className="font-bold break-words self-start p-4"
        >
          Recent articles
        </h1>
        {articles.map(article => (
          <ArticlePreview key={article.title} data={{ article }} />
        ))}
      </div>
      <Link to="/" className="cursor-pointer">
        <h2
          style={{
            color: "rgba(41, 41, 41, 1)",
            fontSize: "36px",
            lineHeight: "44px",
          }}
          className="font-bold break-words self-start p-4"
        >
          More articles
        </h2>
      </Link>
    </div>
  )
}
