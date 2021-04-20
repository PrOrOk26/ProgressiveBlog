import { GatsbyImage, getImage, IGatsbyImageData } from "gatsby-plugin-image"
import { FileNode } from "gatsby-plugin-image/dist/src/components/hooks"
import React, { ReactElement } from "react"
import { Image } from "../../types"

interface Props {
  image: Image
  className?: string
}

export default function Avatar({ image, className }: Props): ReactElement {
  const processedImage = getImage(image.media as FileNode) as IGatsbyImageData

  return (
    <div className={className}>
      <GatsbyImage
        image={processedImage}
        alt={image.alt ?? ""}
        imgClassName="rounded"
        imgStyle={{
          maxWidth: "100%",
          maxHeight: "100%",
          borderRadius: "4px",
        }}
      />
    </div>
  )
}
