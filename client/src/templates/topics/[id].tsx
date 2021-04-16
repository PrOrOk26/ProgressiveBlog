import { graphql, Link } from "gatsby"
import React, { ReactElement } from "react"
import Layout from "../../components/base/layout"
import { ArticleResponse } from "../../data/articles"
import { mapArticleResponseToArticle } from "../../mappers"
import ArticlesPreview from "../../components/articles-preview"

export const query = graphql`
  query ArticlesByTopic($slug: Int!) {
    allStrapiArticle(
      sort: { fields: created_at, order: DESC }
      filter: { topic: { id: { eq: $slug } } }
    ) {
      edges {
        node {
          id
          title
          subtitle
          topic {
            id
            name
          }
          section {
            title
            content
            id
          }
          author {
            id
            firstname
            lastname
          }
          avatar {
            alt
            caption
            media {
              childImageSharp {
                gatsbyImageData(
                  width: 720
                  height: 480
                  placeholder: BLURRED
                  formats: [AUTO]
                )
              }
            }
          }
          created_at
          updated_at
        }
      }
    }
  }
`

type ArticlesEdge = {
  node: ArticleResponse
}

type Props = {
  data: ArticlesResponse
}

export type ArticlesResponse = {
  allStrapiArticle: {
    edges: ArticlesEdge[]
  }
}

export default function TopicPage({ data }: Props): ReactElement {
  return (
    <Layout>
      {data?.allStrapiArticle?.edges?.length ? (
        <ArticlesPreview
          data={{
            articles:
              data.allStrapiArticle.edges
                ?.map(e => e.node)
                .map(mapArticleResponseToArticle) ?? [],
          }}
        />
      ) : (
        <div className="flex flex-col justify-between items-center">
          <span>No articles for this topic yet</span>
          <Link to="/topics" style={{ display: "flex" }}>
            <span className="cursor-pointer">Go back to topics</span>
          </Link>
        </div>
      )}
    </Layout>
  )
}
