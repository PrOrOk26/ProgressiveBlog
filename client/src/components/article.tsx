import React, { ReactElement } from "react"
import { Article as ArticleType } from "../data/articles"
import ArticleAvatar from "./article-avatar"
import ArticleHeader from "./article-header"
import ReactMarkdown from "react-markdown"

interface Props {
  data: {
    article: ArticleType
  }
}

export default function Article({ data }: Props): ReactElement {
  const { article } = data

  debugger

  return (
    <div className="flex flex-col p-4" style={{ maxWidth: 680 }}>
      <ArticleHeader data={{ author: article.author }} />
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
      <div className="pt-1 pb-1">
        <ReactMarkdown
          className="markdown-block"
          transformImageUri={uri => `http://localhost:1337${uri}`}
        >
          {article?.section[0].content ?? ""}
        </ReactMarkdown>
      </div>
      {/* <div className="flex justify-between p-2">
        <span>{5}</span>
        <span>{10}</span>
      </div> */}
    </div>
  )
}
