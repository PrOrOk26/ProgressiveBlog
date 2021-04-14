import { Link } from "gatsby"
import React, { ReactElement } from "react"
import { Article } from "../data/articles"
import ArticleAvatar from "./article-avatar"
import ArticlePreviewHeader from "./article-preview-header"

interface Props {
  data: {
    article: Article
  }
}

export default function ArticlePreview({ data }: Props): ReactElement {
  const { article } = data

  debugger

  return (
    <div className="flex flex-col p-4" style={{ maxWidth: 680 }}>
      <ArticlePreviewHeader data={{ author: article.author }} />
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
      <ArticleAvatar image={article.avatar} />
      <p className="pt-1 pb-1">
        {`${article?.section[0].content.slice(0, 1000)}...` ?? ""}
      </p>
      <Link to={`/articles/${article.id}`}>
        <span
          className="leading-5 text-xs"
          style={{ color: "rgba(102, 138, 170, 1)" }}
        >
          Read more
        </span>
      </Link>
      {/* <div className="flex justify-between p-2">
        <span>{5}</span>
        <span>{10}</span>
      </div> */}
    </div>
  )
}
