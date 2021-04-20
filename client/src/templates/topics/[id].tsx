import { graphql, Link } from "gatsby"
import React, { ReactElement } from "react"
import Layout from "../../components/base/layout"
import { mapArticleResponseToArticle } from "../../mappers"
import ArticlesPreview from "../../components/articles-preview"
import { ArticlesResponse } from "../../types"
import { BlogRoutes } from "../../routes"

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

type Props = {
  data: ArticlesResponse
}

export default function TopicPage({ data }: Props): ReactElement {
  const articles =
    data.allStrapiArticle.edges
      ?.map(e => e.node)
      .map(mapArticleResponseToArticle) ?? []

  const pageTopic = articles.length ? articles[0].topic : null

  return (
    <Layout>
      {data?.allStrapiArticle?.edges?.length ? (
        <ArticlesPreview
          data={{
            articles,
          }}
          title={pageTopic?.name}
        />
      ) : (
        <div className="flex flex-col justify-between items-center">
          <span>No articles for this topic yet</span>
          <Link to={BlogRoutes.TOPICS} style={{ display: "flex" }}>
            <span className="cursor-pointer font-bold">Go back to topics</span>
          </Link>
        </div>
      )}
    </Layout>
  )
}
