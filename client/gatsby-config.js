/**
 * Configure your Gatsby site with this file.
 *
 * See: https://www.gatsbyjs.com/docs/gatsby-config/
 */

require("ts-node").register({ files: true })
require("dotenv").config({
  path: `.env`,
})

console.log(process.env.API_URL)

module.exports = {
  /* Your site config here */
  plugins: [
    `gatsby-plugin-react-helmet`,
    `gatsby-plugin-postcss`,
    {
      resolve: `gatsby-plugin-typescript`,
      options: {
        isTSX: true, // defaults to false
        jsxPragma: `jsx`, // defaults to "React"
        allExtensions: true, // defaults to false
      },
    },
    {
      resolve: "gatsby-source-strapi",
      options: {
        apiURL: "http://localhost:1337",
        contentTypes: ["article", "topic"],
        singleTypes: [`global`],
        queryLimit: 1000,
        loginData: {
          identifier: "prorok26",
          password: "PiKaSsO1937",
        },
      },
    },
    {
      resolve: `gatsby-source-filesystem`,
      options: {
        path: `${__dirname}/.cache/gatsby-source-filesystem`,
      },
    },
    `gatsby-plugin-image`,
    `gatsby-plugin-sharp`,
    `gatsby-transformer-sharp`,
    {
      resolve: `gatsby-transformer-remark`,
      options: {
        plugins: [
          {
            resolve: `gatsby-remark-highlights`,
            options: {
              // Additional languages, no need to add it
              // if you don't wish to use additional languages
              additionalLangs: [`language-rust`],
              // scope prefix to use, defaults to ''
              scopePrefix: "syntax--",
              codeWrap: {
                className: "midnight",
              },
            },
          },
        ],
      },
    },
  ],
}
