import React from "react"

export default function Footer() {
  return (
    <footer className="flex flex-col justify-start">
      <div
        style={{ height: 150, backgroundColor: "white" }}
        className="flex flex-col justify-center overflow-hidden pl-6 pr-6"
      >
        <div
          className="flex justify-center items-center mb-2"
          style={{ color: "#787878" }}
        >
          <span className="font-medium text-lg leading-lg tracking-wide">
            I'm looking forward to life as a journey full of unknown
          </span>
          <span className="font-bold text-lg leading-lg tracking-wide">
            - let's explore it together
          </span>
        </div>
        <div className="flex justify-center items-center">
          <a
            href="mailto:vraniuk@gmail.com"
            className="font-medium text-lg leading-lg tracking-wide"
          >
            Contact me
          </a>
        </div>
      </div>
    </footer>
  )
}
