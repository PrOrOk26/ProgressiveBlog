import React from "react"
import ArticlesPreview from "../components/articles-preview"
import Layout from "../components/base/layout"
import { Article, articlesMocks } from "../data/articles"
import { graphql, useStaticQuery } from "gatsby"

const query = graphql`
  query Articles {
    allStrapiArticle {
      edges {
        node {
          id
          title
          subtitle
          text
        }
      }
    }
  }
`

type ArticlesEdge = {
  node: Article
}

export type ArticlesResponse = {
  allStrapiArticle: {
    edges: ArticlesEdge[]
  }
}

function HomePage() {
  const data = useStaticQuery<ArticlesResponse>(query)

  debugger
  return (
    <Layout>
      <ArticlesPreview
        data={{
          articles: data?.allStrapiArticle?.edges?.map(e => e.node) ?? [],
        }}
      />
    </Layout>
  )
}

export default HomePage
