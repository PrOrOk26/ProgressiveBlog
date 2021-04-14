import { graphql } from "gatsby"
import React, { ReactElement } from "react"
import Article from "../../components/article"
import Layout from "../../components/base/layout"
import { ArticleResponse } from "../../data/articles"
import { mapArticleResponseToArticle } from "../../../mappers"

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
      text
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
        childImageSharp {
          gatsbyImageData(placeholder: BLURRED, formats: [JPG, PNG])
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
