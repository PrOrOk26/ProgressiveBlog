import { navigate } from "gatsby"
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
    <div
      className="flex flex-col p-4 xs:p-2 cursor-pointer"
      onClick={() => navigate(`/topics/${topic.id}`)}
    >
      {topic.avatar && <Avatar image={{ media: topic.avatar }} />}
      <span>{topic.name}</span>
    </div>
  )
}
