import { GatsbyImage, getImage, IGatsbyImageData } from "gatsby-plugin-image"
import {
  FileNode,
  IGatsbyImageDataParent,
} from "gatsby-plugin-image/dist/src/components/hooks"
import React, { ReactElement } from "react"

type ImageDataLike = FileNode | IGatsbyImageDataParent | IGatsbyImageData

interface Props {
  image: ImageDataLike
  className?: string
}

export default function Avatar({ image, className }: Props): ReactElement {
  const processedImage = getImage(image as FileNode) as IGatsbyImageData

  return (
    <div className={className}>
      <GatsbyImage
        image={processedImage}
        alt="A dinosaur"
        imgStyle={{
          maxWidth: "100%",
          maxHeight: "100%",
          borderRadius: "4px",
        }}
      />
    </div>
  )
}
