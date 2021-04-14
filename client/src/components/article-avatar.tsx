import { GatsbyImage, getImage, IGatsbyImageData } from "gatsby-plugin-image"
import {
  FileNode,
  IGatsbyImageDataParent,
} from "gatsby-plugin-image/dist/src/components/hooks"
import React, { ReactElement } from "react"

type ImageDataLike = FileNode | IGatsbyImageDataParent | IGatsbyImageData

interface Props {
  image: ImageDataLike
}

export default function ArticleAvatar({ image }: Props): ReactElement {
  const processedImage = getImage(image as FileNode) as IGatsbyImageData

  return (
    <div className="flex flex-col pt-2 pb-2">
      <GatsbyImage
        image={processedImage}
        alt="A dinosaur"
        imgStyle={{ maxWidth: "100%", maxHeight: "100%" }}
      />
      <p className="flex items-center p-2 self-center">
        <span
          className="leading-5 text-xs"
          style={{ color: "rgba(117, 117, 117, 1)" }}
        >
          This is the best investigation you have ever seen
        </span>
      </p>
    </div>
  )
}
