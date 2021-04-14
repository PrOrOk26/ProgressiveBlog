import { WithChildren } from "../../util/with-children"
import Header from "./header"
import React from "react"
import Footer from "./footer"
import { Helmet } from "react-helmet"

type LayoutProps = WithChildren<{
  title?: string
}>

export default function Layout({
  children,
  title = "Progressive blog",
}: LayoutProps) {
  return (
    <div className="h-full flex flex-col justify-between">
      <Helmet>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="initial-scale=1.0, width=device-width" />
      </Helmet>
      <Header />
      <main>{children}</main>
      <Footer />
    </div>
  )
}
