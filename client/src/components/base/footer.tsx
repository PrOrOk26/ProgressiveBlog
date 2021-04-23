import { Link } from "gatsby"
import React from "react"
import { Logo } from "."
import { BlogRoutes } from "../../routes"

export default function Footer() {
  return (
    <footer
      className="flex flex-col justify-center p-6"
      style={{ backgroundColor: "rgba(0, 0, 0, 0.9)", color: "white" }}
    >
      <div className="flex flex-col">
        <p className="mb-2 text-center text-white">
          <span className="font-medium text-lg leading-lg tracking-wide">
            I'm looking forward to a journey of life
          </span>
          <span className="font-bold text-lg leading-lg tracking-wide">
            - let's explore it together
          </span>
        </p>
        <div className="flex flex-col sm:flex-row sm:justify-between items-center">
          <Logo />
          <a
            href="mailto:vraniuk@gmail.com"
            className="font-medium text-sm leading-lg tracking-wide"
          >
            Contact me
          </a>
        </div>
      </div>
    </footer>
  )
}
