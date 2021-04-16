import { graphql } from "gatsby"
import React, { ReactElement } from "react"
import ReactMarkdown from "react-markdown"
import Layout from "../components/base/layout"

type AboutAuthor = {
  id: string
  strapiId: number
  personalInfo: {
    email: string
    linkedin: string
    twitter: string
  }
  content: string
}

type AboutAuthorEdge = {
  node: AboutAuthor
}

type AboutAuthorQueryResponse = {
  edges: AboutAuthorEdge[]
}

interface Props {
  data: {
    allStrapiAboutAuthor: AboutAuthorQueryResponse
  }
}

export const query = graphql`
  query AboutAuthor {
    allStrapiAboutAuthor {
      edges {
        node {
          id
          strapiId
          personalInfo {
            email
            linkedin
            twitter
          }
          content
        }
      }
    }
  }
`

export default function Author({ data }: Props): ReactElement {
  const { allStrapiAboutAuthor } = data

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
          About the author
        </h1>
        <ReactMarkdown
          className="markdown-block"
          transformImageUri={uri => `http://localhost:1337${uri}`}
        >
          {allStrapiAboutAuthor.edges[0].node.content}
        </ReactMarkdown>
        <div className="flex flex-col justify-start items-start">
          <h2
            style={{
              color: "rgba(41, 41, 41, 1)",
              fontSize: "36px",
              lineHeight: "44px",
            }}
            className="font-bold break-words pt-2 pb-2"
          >
            Let's get in touch!
          </h2>
          <a
            href={`https://twitter.com/${allStrapiAboutAuthor.edges[0].node.personalInfo.twitter}`}
          >
            Twitter
          </a>
          <a
            href={`https://www.linkedin.com/in/${allStrapiAboutAuthor.edges[0].node.personalInfo.linkedin}`}
          >
            LinkedIn
          </a>
        </div>
      </div>
    </Layout>
  )
}
