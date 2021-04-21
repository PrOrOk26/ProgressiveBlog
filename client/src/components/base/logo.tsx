import { Link } from "gatsby"
import React, { ReactElement } from "react"
import { BlogRoutes } from "../../routes"

export default function Logo(): ReactElement {
  return (
    <Link
      className="flex flex-col justify-center"
      to={BlogRoutes.HOME}
      style={{ color: "#787878" }}
    >
      <span className="font-extrabold text-lg leading-lg tracking-wide">
        Perennial
      </span>
      <span className="text-sm">Quest</span>
    </Link>
  )
}
