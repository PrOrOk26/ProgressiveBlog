import React from "react"
import ArticlesPreview from "../components/articles-preview"
import Layout from "../components/base/layout"
import { ArticleResponse } from "../data/articles"
import { graphql } from "gatsby"
import { mapArticleResponseToArticle } from "../mappers"

export const query = graphql`
  query RecentArticles {
    allStrapiArticle(limit: 5, sort: { fields: created_at, order: DESC }) {
      edges {
        node {
          id
          title
          subtitle
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

function HomePage({ data }: Props) {
  return (
    <Layout>
      <ArticlesPreview
        data={{
          articles:
            data?.allStrapiArticle?.edges
              ?.map(e => e.node)
              .map(mapArticleResponseToArticle) ?? [],
        }}
      />
    </Layout>
  )
}

export default HomePage
