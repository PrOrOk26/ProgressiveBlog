import { graphql } from "gatsby"
import React, { ReactElement } from "react"
import ArticleTopicCard from "../../components/article-topic-card"
import Layout from "../../components/base/layout"
import { TopicResponse } from "../../data/articles"
import { mapTopicResponseToTopic } from "../../mappers/map-topic-response-to-topic"

type TopicEdge = {
  node: TopicResponse
}

type Props = {
  data: TopicsResponse
}

export type TopicsResponse = {
  allStrapiTopic: {
    edges: TopicEdge[]
  }
}

export const query = graphql`
  query Topics {
    allStrapiTopic {
      edges {
        node {
          strapiId
          name
          avatar {
            childImageSharp {
              gatsbyImageData(
                width: 320
                height: 320
                placeholder: BLURRED
                formats: [AUTO]
              )
            }
          }
        }
      }
    }
  }
`

export default function TopicsPage({ data }: Props): ReactElement {
  return (
    <Layout>
      <div className="flex justify-around flex-wrap">
        {data?.allStrapiTopic?.edges
          ?.map(e => e.node)
          .map(mapTopicResponseToTopic)
          .map(node => <ArticleTopicCard data={{ topic: node }} />) ?? []}
      </div>
    </Layout>
  )
}
