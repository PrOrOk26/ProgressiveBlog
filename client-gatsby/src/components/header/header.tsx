import React from "react"
import "./header.scss"

export default function Header() {
  return (
    <header className="header">
      <div className="top">
        <span>Progressive</span>
        <span style={{ fontFamily: "Montserrat Medium Italic" }}>
          Just a blog
        </span>
      </div>
      <div className="quote">
        <span>Don’t judge a Cloud by its cover — BvK</span>
      </div>
      <nav className="nav">
        {/* <Link href="/">
          <span className="link">Motivation</span>
        </Link>
        <Link href="/">
          <span className="link">Author</span>
        </Link>
        <Link href="/">
          <span className="link">Software Engineering</span>
        </Link>
        <Link href="/">
          <span className="link">Thoughts</span>
        </Link>
        <Link href="/">
          <span className="link">Contact Me</span>
        </Link> */}
      </nav>
    </header>
  )
}
