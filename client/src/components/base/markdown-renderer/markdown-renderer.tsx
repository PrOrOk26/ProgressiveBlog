import React, { ReactElement } from "react"
import ReactMarkdown from "react-markdown"
import { getMarkdownElementMapper } from "./markdown-elements-mappers"

interface Props {
  children: string
}

export default function MarkdownRenderer({ children }: Props): ReactElement {
  return (
    <ReactMarkdown
      className="markdown-block"
      components={{
        a: getMarkdownElementMapper("a"),
      }}
      transformImageUri={uri => `http://localhost:1337${uri}`}
    >
      {children}
    </ReactMarkdown>
  )
}
