require("ts-node").register({ files: true })
const path = require("path")

exports.createPages = async ({ graphql, actions }) => {
  const { createPage } = actions
  const strapiArticles = await graphql(`
    query Articles {
      allStrapiArticle {
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
              childImageSharp {
                gatsbyImageData(placeholder: BLURRED, formats: [AUTO])
              }
            }
            created_at
            updated_at
          }
        }
      }
    }
  `)

  const articlePage = path.resolve(`src/pages/articles/[id].tsx`)

  strapiArticles.data.allStrapiArticle.edges.forEach(edge => {
    createPage({
      path: `/articles/${edge.node.id}`,
      component: articlePage,
      context: {
        slug: edge.node.id,
      },
    })
  })

  const strapiTopics = await graphql(`
    query Topics {
      allStrapiTopic {
        edges {
          node {
            id
          }
        }
      }
    }
  `)

  console.log(strapiTopics.data.allStrapiTopic.edges)

  const topicPage = path.resolve(`src/pages/topics/[id].tsx`)

  strapiTopics.data.allStrapiTopic.edges.forEach(edge => {
    console.log(`edge.node.id: \n`, edge.node.id)
    createPage({
      path: `/topics/${edge.node.id}`,
      component: topicPage,
      context: {
        slug: parseInt(edge.node.id),
      },
    })
  })
}
