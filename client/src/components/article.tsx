import React, { ReactElement } from "react"
import ArticleAvatar from "./article-avatar"
import ArticleHeader from "./article-header"
import { Article as ArticleType } from "../types"
import { MarkdownRenderer } from "./base"

interface Props {
  data: {
    article: ArticleType
  }
}

export default function Article({ data }: Props): ReactElement {
  const { article } = data

  return (
    <div className="flex flex-col p-4" style={{ maxWidth: 680 }}>
      <ArticleHeader data={{ article }} />
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
      <div className="pt-1 pb-1">
        <MarkdownRenderer>{article?.section[0].content ?? ""}</MarkdownRenderer>
      </div>
    </div>
  )
}
