import React from "react"
import {
  NormalComponent,
  ReactBaseProps,
  ReactMarkdownProps,
} from "react-markdown/src/ast-to-react"

const markdownElementsMap: {
  [key in keyof Partial<JSX.IntrinsicElements>]: NormalComponent
} = {
  a: aElementMapper,
}

export function getMarkdownElementMapper(
  elementName: keyof JSX.IntrinsicElements
): NormalComponent | undefined {
  return markdownElementsMap[elementName]
}

function aElementMapper({
  node,
  ...props
}: ReactBaseProps & ReactMarkdownProps): JSX.Element {
  return (
    <a {...props} href={(props.children[0] ?? "") as string} target="_blank">
      {props.children}
    </a>
  )
}
