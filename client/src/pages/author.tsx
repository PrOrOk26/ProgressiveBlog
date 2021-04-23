import { graphql } from "gatsby"
import React, { ReactElement } from "react"
import { MarkdownRenderer } from "../components/base"
import Layout from "../components/base/layout"
import { AboutAuthorQueryResponse } from "../types"

type Props = {
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
            github
          }
          content
        }
      }
    }
  }
`

export default function Author({ data }: Props): ReactElement {
  const { allStrapiAboutAuthor } = data

  let authorContent = allStrapiAboutAuthor.edges[0].node.content

  authorContent = authorContent.replace(/\n/gi, "  \n&nbsp;")

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
        <MarkdownRenderer>{authorContent}</MarkdownRenderer>
        <div className="flex flex-col justify-start items-center">
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
            style={{ color: "rgb(5, 132, 190)" }}
            target="_blank"
          >
            Twitter
          </a>
          <a
            href={`https://www.linkedin.com/in/${allStrapiAboutAuthor.edges[0].node.personalInfo.linkedin}`}
            style={{ color: "rgb(5, 132, 190)" }}
            target="_blank"
          >
            LinkedIn
          </a>
          <a
            href={`https://github.com/${allStrapiAboutAuthor.edges[0].node.personalInfo.github}`}
            style={{ color: "rgb(5, 132, 190)" }}
            target="_blank"
          >
            GitHub
          </a>
        </div>
      </div>
    </Layout>
  )
}
