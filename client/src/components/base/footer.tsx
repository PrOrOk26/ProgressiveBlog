import React from "react"

export default function Footer() {
  return (
    <footer className="flex flex-col justify-start">
      <div
        style={{ height: 75, backgroundColor: "#355876" }}
        className="flex overflow-hidden pl-6 pr-6"
      >
        <div className="flex flex-col justify-center">
          <span className="font-extrabold text-white text-lg leading-lg tracking-wide">
            towards
          </span>
          <span className="text-white text-sm">data science</span>
        </div>
      </div>
      {/* <div className="flex justify-between font-montserratExtraBold">
        <span>Progressive</span>
        <span className="font-montserratMediumItalic">Just a blog</span>
      </div>
      <div className="flex justify-center items-center font-montserratMediumItalic">
        <span>Don’t judge a Cloud by its cover — BvK</span>
      </div> */}
      {/* <nav className="flex justify-between m-auto mt-5 mb-5 border-2 border-solid border-black">
        <Link to="/">
          <span className="cursor-pointer">Motivation</span>
        </Link>
        <Link to="/">
          <span className="cursor-pointer">Author</span>
        </Link>
        <Link to="/">
          <span className="cursor-pointer">Software Engineering</span>
        </Link>
        <Link to="/">
          <span className="cursor-pointer">Thoughts</span>
        </Link>
        <Link to="/">
          <span className="cursor-pointer">Contact Me</span>
        </Link>
      </nav> */}
    </footer>
  )
}
