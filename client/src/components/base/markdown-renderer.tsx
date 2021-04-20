import React, { ReactElement } from "react"
import ReactMarkdown from "react-markdown"

interface Props {
  children: string
}

export default function MarkdownRenderer({ children }: Props): ReactElement {
  return (
    <ReactMarkdown
      className="markdown-block"
      transformImageUri={uri => `http://localhost:1337${uri}`}
    >
      {children}
    </ReactMarkdown>
  )
}
