import { graphql } from "gatsby"
import React, { ReactElement } from "react"
import Article from "../../components/article"
import Layout from "../../components/base/layout"
import { mapArticleResponseToArticle } from "../../mappers"
import { ArticleResponse } from "../../types"

interface Props {
  data: {
    strapiArticle: ArticleResponse
  }
}

export const query = graphql`
  query Article($slug: String!) {
    strapiArticle(id: { eq: $slug }) {
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
`

export default function ArticlePage({ data }: Props): ReactElement {
  return (
    <Layout>
      <div className="flex flex-col items-center">
        <Article
          data={{ article: mapArticleResponseToArticle(data.strapiArticle) }}
        />
      </div>
    </Layout>
  )
}
