import React, { ReactElement } from "react"

type Props = {
  className: string
}

export default function ContactIcon({ className }: Props): ReactElement {
  return (
    <svg
      style={{ width: "24px", height: "24px" }}
      className={className}
      viewBox="0 0 24 24"
    >
      <path
        fill="currentColor"
        d="M1.5,4V5.5C1.5,9.65 3.71,13.28 7,15.3V20H22V18C22,15.34 16.67,14 14,14C14,14 13.83,14 13.75,14C9,14 5,10 5,5.5V4M14,4A4,4 0 0,0 10,8A4,4 0 0,0 14,12A4,4 0 0,0 18,8A4,4 0 0,0 14,4Z"
      />
    </svg>
  )
}
