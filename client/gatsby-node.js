require("ts-node").register({ files: true })
const path = require("path")
const { loadDocuments } = require("@graphql-tools/load")
const { GraphQLFileLoader } = require("@graphql-tools/graphql-file-loader")

const graphqQueryPaths = [
  "./src/graphql/queries/all-articles.gql",
  "./src/graphql/queries/all-topics.gql",
]

const pagesLocations = {
  article: `src/templates/articles/[id].tsx`,
  topic: `src/templates/topics/[id].tsx`,
}

exports.createPages = async ({ graphql, actions }) => {
  const { createPage } = actions

  const [allArticlesQueryObject, allTopicsQueryObject] = await loadDocuments(
    graphqQueryPaths,
    {
      loaders: [new GraphQLFileLoader()],
    }
  )

  const articles = await graphql(allArticlesQueryObject.rawSDL)
  const topics = await graphql(allTopicsQueryObject.rawSDL)

  const articlePage = path.resolve(pagesLocations.article)
  const topicPage = path.resolve(pagesLocations.topic)

  articles.data.allStrapiArticle.edges.forEach(edge => {
    createPage({
      path: `/articles/${edge.node.id}`,
      component: articlePage,
      context: {
        slug: edge.node.id,
      },
    })
  })

  topics.data.allStrapiTopic.edges.forEach(edge => {
    createPage({
      path: `/topics/${edge.node.strapiId}`,
      component: topicPage,
      context: {
        slug: parseInt(edge.node.strapiId),
      },
    })
  })
}
