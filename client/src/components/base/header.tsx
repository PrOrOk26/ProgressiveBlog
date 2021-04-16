import React from "react"
import { Link } from "gatsby"
import BurgerMenu from "./burger-menu"
import {
  HomeIcon,
  AuthorIcon,
  AboutBlogIcon,
  BlogIcon,
  ContactIcon,
} from "../icons"

export default function Header() {
  return (
    <header className="flex flex-col justify-start">
      <BurgerMenu>
        <Link to="/" style={{ display: "flex" }}>
          <HomeIcon className="mr-2" />
          <span className="cursor-pointer">Home</span>
        </Link>
        <Link to="/topics" style={{ display: "flex" }}>
          <BlogIcon className="mr-2" />
          <span className="cursor-pointer">Blog posts</span>
        </Link>
        <Link to="/author" style={{ display: "flex" }}>
          <AuthorIcon className="mr-2" />
          <span className="cursor-pointer">About the author</span>
        </Link>
        <Link to="/about" style={{ display: "flex" }}>
          <AboutBlogIcon className="mr-2" />
          <span className="cursor-pointer">What is this blog</span>
        </Link>
      </BurgerMenu>
      <div
        style={{ height: 150, backgroundColor: "white" }}
        className="flex justify-center overflow-hidden pl-6 pr-6"
      >
        <div
          className="flex flex-col justify-center"
          style={{ color: "#787878" }}
        >
          <span className="font-extrabold text-lg leading-lg tracking-wide">
            Perrenial
          </span>
          <span className="text-sm">Quest</span>
        </div>
        <div
          className="flex flex-col justify-center mr-4 ml-4"
          style={{ color: "#787878" }}
        >
          <span className="font-extrabold text-lg leading-lg tracking-wide">
            ||
          </span>
        </div>
        <div
          className="flex flex-col justify-center"
          style={{ color: "#787878" }}
        >
          <span className="text-lg leading-lg tracking-wide">
            Thoughts on life, art, engineering and more
          </span>
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

      </nav> */}
    </header>
  )
}
