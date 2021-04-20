import { Link } from "gatsby"
import React, { ReactElement } from "react"
import { BlogRoutes } from "../routes"
import { Article } from "../types"
import { DateFormats, formatDate, getFullAuthorName } from "../util"

interface Props {
  data: {
    article: Article
  }
}

export default function ArticleHeader({ data }: Props): ReactElement {
  const { article } = data

  return (
    <div className="flex self-start items-center pl-1">
      {article.author && (
        <>
          <Link to={BlogRoutes.AUTHOR} className="mr-3">
            <p className="flex items-center">
              <span
                className="leading-5 text-xs"
                style={{ color: "rgba(102, 138, 170, 1)" }}
              >
                {getFullAuthorName(article.author)}
              </span>
            </p>
          </Link>
          <p className="flex items-center">
            <span className="leading-5 text-xs" style={{ color: "#000000" }}>
              {formatDate(article.created_at, DateFormats.SECONDARY)}
            </span>
          </p>
        </>
      )}
    </div>
  )
}
