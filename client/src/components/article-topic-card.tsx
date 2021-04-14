import React, { ReactElement } from "react"
import { Topic } from "../data/articles"
import Avatar from "./base/avatar"

interface Props {
  data: {
    topic: Topic
  }
}

export default function ArticleTopicCard({ data }: Props): ReactElement {
  const { topic } = data

  return (
    <div className="flex flex-col p-4 xs:p-2">
      <Avatar image={topic.avatar} />
      <span>{topic.name}</span>
    </div>
  )
}
