import { graphql } from "gatsby"
import React, { ReactElement } from "react"
import ReactMarkdown from "react-markdown"
import Layout from "../components/base/layout"

type AboutBlog = {
  content: string
}

type AboutBlogEdge = {
  node: AboutBlog
}

type AboutBlogQueryResponse = {
  edges: AboutBlogEdge[]
}

interface Props {
  data: {
    allStrapiAboutBlog: AboutBlogQueryResponse
  }
}

export const query = graphql`
  query MyQuery {
    allStrapiAboutBlog {
      edges {
        node {
          content
        }
      }
    }
  }
`

export default function About({ data }: Props): ReactElement {
  const { allStrapiAboutBlog } = data

  return (
    <Layout>
      <div className="p-4 flex flex-col justify-start items-center">
        <h1
          style={{
            color: "rgba(41, 41, 41, 1)",
            fontSize: "36px",
            lineHeight: "44px",
          }}
          className="font-bold break-words pt-2 pb-2"
        >
          What is this blog?
        </h1>
        <ReactMarkdown
          className="markdown-block"
          transformImageUri={uri => `http://localhost:1337${uri}`}
        >
          {allStrapiAboutBlog.edges[0].node.content}
        </ReactMarkdown>
      </div>
    </Layout>
  )
}
