import { Link } from "gatsby"
import React, { ReactElement } from "react"
import { BlogRoutes } from "../routes"
import { Article } from "../types"
import ArticlePreview from "./article-preview"

interface Props {
  data: {
    articles: Article[]
  }
  title?: string | null
}

export default function ArticlesPreview({ data, title }: Props): ReactElement {
  const { articles } = data

  return (
    <div className="flex flex-col items-center pr-3 pl-3 pb-3">
      <div className="flex flex-col items-center pt-2 pb-6">
        <h1
          style={{
            color: "rgba(41, 41, 41, 1)",
          }}
          className="text-lg font-medium break-words self-start"
        >
          {title}
        </h1>
        {articles.map(article => (
          <ArticlePreview key={article.title} data={{ article }} />
        ))}
      </div>
      <Link
        to={BlogRoutes.TOPICS}
        className="cursor-pointer bg-blue-300 text-sm text-white leading-xl rounded-md pl-4 pr-4 pt-2 pb-2"
      >
        <span>More articles</span>
      </Link>
    </div>
  )
}
