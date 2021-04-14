import { graphql } from "gatsby"
import React, { ReactElement } from "react"
import Article from "../../components/article"
import ArticleTopicCard from "../../components/article-topic-card"
import Layout from "../../components/base/layout"
import { Topic } from "../../data/articles"

type TopicEdge = {
  node: Topic
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
          name
          avatar {
            childImageSharp {
              gatsbyImageData(
                width: 320
                height: 320
                placeholder: BLURRED
                formats: [JPG, PNG]
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
          .map(node => <ArticleTopicCard data={{ topic: node }} />) ?? []}
      </div>
    </Layout>
  )
}
