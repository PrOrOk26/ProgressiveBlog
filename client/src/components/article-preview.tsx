import { Link } from "gatsby"
import React, { ReactElement } from "react"
import { createArticleRoute } from "../routes"
import { Article } from "../types"
import ArticleAvatar from "./article-avatar"
import ArticlePreviewHeader from "./article-preview-header"

interface Props {
  data: {
    article: Article
  }
}

export default function ArticlePreview({ data }: Props): ReactElement {
  const { article } = data

  return (
    <div
      className="flex flex-col pt-8 pb-10 border-b border-solid border-gray-300"
      style={{ maxWidth: 680 }}
    >
      <ArticlePreviewHeader data={{ article }} />
      <h1
        style={{
          color: "rgba(41, 41, 41, 1)",
          fontSize: "36px",
          lineHeight: "44px",
        }}
        className="font-bold break-words"
      >
        {article.title}
      </h1>
      <h2
        style={{
          color: "rgba(117, 117, 117, 1)",
          fontSize: "22px",
          lineHeight: "28px",
        }}
        className="break-words"
      >
        {article.subtitle}
      </h2>
      {article.avatar && <ArticleAvatar image={article.avatar} />}
      <p className="pt-1 pb-1">
        {`${article?.section[0].content.slice(0, 500)}...` ?? ""}
      </p>
      <Link to={createArticleRoute(article)}>
        <span
          className="leading-5 text-xs"
          style={{ color: "rgba(102, 138, 170, 1)" }}
        >
          Read more
        </span>
      </Link>
    </div>
  )
}
