import React from "react"

export default function Header() {
  return (
    <header className="flex flex-col justify-start">
      <div className="flex justify-between font-montserratExtraBold">
        <span>Progressive</span>
        <span className="font-montserratMediumItalic">Just a blog</span>
      </div>
      <div className="flex justify-center items-center font-montserratMediumItalic">
        <span>Don’t judge a Cloud by its cover — BvK</span>
      </div>
      <nav className="flex justify-between m-auto mt-5 mb-5 border-2 border-solid border-black">
        {/* <Link href="/">
          <span className="cursor-pointer">Motivation</span>
        </Link>
        <Link href="/">
          <span className="cursor-pointer">Author</span>
        </Link>
        <Link href="/">
          <span className="cursor-pointer">Software Engineering</span>
        </Link>
        <Link href="/">
          <span className="cursor-pointer">Thoughts</span>
        </Link>
        <Link href="/">
          <span className="cursor-pointer">Contact Me</span>
        </Link> */}
      </nav>
    </header>
  )
}
