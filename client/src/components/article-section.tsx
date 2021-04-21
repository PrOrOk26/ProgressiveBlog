import React, { ReactElement } from "react"
import { Section } from "../types"
import { MarkdownRenderer } from "./base"

interface Props {
  data: {
    section: Section
  }
}

export default function ArticleSection({ data }: Props): ReactElement {
  const { section } = data

  return (
    <div className="flex flex-col pb-8">
      <h2 className="break-words font-semibold pb-2 tracking-normal leading-9 text-2xl text-black">
        {section.title}
      </h2>
      <MarkdownRenderer>{section.content ?? ""}</MarkdownRenderer>
    </div>
  )
}
