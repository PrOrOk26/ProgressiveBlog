import { slide as Menu } from "react-burger-menu"
import React, { ReactElement } from "react"

interface Props {
  children: ReactElement[] | ReactElement
}

export default function BurgerMenu({ children }: Props): ReactElement {
  return (
    <Menu
      menuClassName="burger-menu"
      itemListClassName="burger-menu__item-list"
    >
      {children}
    </Menu>
  )
}
