import React from "react"
import { Link } from "gatsby"
import BurgerMenu from "./burger-menu"
import { HomeIcon, AuthorIcon, AboutBlogIcon, BlogIcon } from "../icons"
import { BlogRoutes } from "../../routes"
import { Logo } from "."

export default function Header() {
  return (
    <header className="flex flex-col justify-start border-b border-solid border-gray-300">
      <BurgerMenu>
        <Link to={BlogRoutes.HOME} style={{ display: "flex" }}>
          <HomeIcon className="mr-2" />
          <span className="cursor-pointer">Home</span>
        </Link>
        <Link to={BlogRoutes.TOPICS} style={{ display: "flex" }}>
          <BlogIcon className="mr-2" />
          <span className="cursor-pointer">Blog posts</span>
        </Link>
        <Link to={BlogRoutes.AUTHOR} style={{ display: "flex" }}>
          <AuthorIcon className="mr-2" />
          <span className="cursor-pointer">About the author</span>
        </Link>
        <Link to={BlogRoutes.ABOUT} style={{ display: "flex" }}>
          <AboutBlogIcon className="mr-2" />
          <span className="cursor-pointer">What is this blog</span>
        </Link>
      </BurgerMenu>
      <div
        style={{ height: 150, backgroundColor: "white" }}
        className="flex justify-center overflow-hidden pl-6 pr-6"
      >
        <Logo />
        <div
          className="hidden md:flex flex-col justify-center mr-4 ml-4"
          style={{ color: "#787878" }}
        >
          <span className="font-extrabold text-lg leading-lg tracking-wide">
            ||
          </span>
        </div>
        <div
          className="hidden md:flex flex-col justify-center"
          style={{ color: "#787878" }}
        >
          <span className="text-lg leading-lg tracking-wide">
            Thoughts on life, art, engineering and more
          </span>
        </div>
      </div>
    </header>
  )
}
