import React, { ReactElement } from "react"
import { Author } from "../data/articles"
import { getFullAuthorName } from "../util"

interface Props {
  data: {
    author: Author
  }
}

export default function ArticleHeader({ data }: Props): ReactElement {
  return (
    <div className="flex self-start items-center pl-1">
      {data.author && (
        <a rel="noopener" href="/">
          <p className="flex items-center">
            <span
              className="leading-5 text-xs"
              style={{ color: "rgba(102, 138, 170, 1)" }}
            >
              {getFullAuthorName(data.author)}
            </span>
          </p>
        </a>
      )}
    </div>
  )
}
