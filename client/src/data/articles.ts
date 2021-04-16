import { IGatsbyImageData } from "gatsby-plugin-image"
import {
  FileNode,
  IGatsbyImageDataParent,
} from "gatsby-plugin-image/dist/src/components/hooks"

export type Article = {
  id: number
  title: string
  subtitle: string
  section: Section[]
  author: Author
  avatar?: Image
  created_at: Date
  updated_at: Date
}

export type ImageDataLike = FileNode | IGatsbyImageDataParent | IGatsbyImageData

export type Image = {
  alt?: string
  caption?: string
  media: ImageDataLike
}

export type ArticleResponse = Omit<Article, "created_at" | "updated_at"> & {
  created_at: string
  updated_at: string
}

export type Author = {
  id: number
  firstname: string
  lastname: string
}

export type Section = {
  id: number
  title: string
  content: string
}

export type Topic = {
  id: number
  name: string
  avatar?: ImageDataLike
}

export type TopicResponse = Omit<Topic, "id"> & {
  strapiId: number
}

export const articlesMocks: Article[] = [
  {
    id: 1,
    title: "purus. Maecenas libero est, congue a, aliquet",
    subtitle: "ornare, lectus ante dictum mi, ac mattis velit justo nec",
    section: [
      {
        id: 1,
        title:
          "Noone saw that coming, this is what waits us all at the end of time!",
        content:
          "Stephen William Hawking CH CBE FRS FRSA (8 January 1942 – 14 March 2018) was an English theoretical physicist, cosmologist, and author who was director of research at the Centre for Theoretical Cosmology at the University of Cambridge at the time of his death.[18][19][8] He was the Lucasian Professor of Mathematics at the University of Cambridge between 1979 and 2009.\n\n> Hawking was born in Oxford into a family of doctors. Hawking began his university education at University College, Oxford, in October 1959 at the age of 17, where he received a first-class BA (Hons.) degree in physics. He began his graduate work at Trinity Hall, Cambridge, in October 1962, where he obtained his PhD degree in applied mathematics and theoretical physics, specialising in general relativity and cosmology in March 1966. During this period—in 1963—Hawking was diagnosed with an early-onset, slow-progressing form of motor neurone disease (also known as amyotrophic lateral sclerosis (ALS) or Lou Gehrig's disease) that gradually paralysed him over the decades.[20][21] After the loss of his speech, he was able to communicate through a speech-generating device—initially through use of a handheld switch, and eventually by using a single cheek muscle.\n\n![1200px-AngusYoung.jpeg](http://localhost:1337/uploads/1200px_Angus_Young_611875abcd.jpeg)\n\nHawking's scientific works included a collaboration with Roger Penrose on gravitational singularity theorems in the framework of general relativity and the theoretical prediction that black holes emit radiation, often called Hawking radiation. Initially, Hawking radiation was controversial. By the late 1970s and following the publication of further research, the discovery was widely accepted as a significant breakthrough in theoretical physics. Hawking was the first to set out a theory of cosmology explained by a union of the general theory of relativity and quantum mechanics. He was a vigorous supporter of the many-worlds interpretation of quantum mechanics.[22][23]\n\nHawking achieved commercial success with several works of popular science in which he discussed his theories and cosmology in general. His book A Brief History of Time appeared on the Sunday Times bestseller list for a record-breaking 237 weeks. Hawking was a Fellow of the Royal Society, a lifetime member of the Pontifical Academy of Sciences, and a recipient of the Presidential Medal of Freedom, the highest civilian award in the United States. In 2002, Hawking was ranked number 25 in the BBC's poll of the 100 Greatest Britons. He died on 14 March 2018 at the age of 76, after living with motor neurone disease for more than 50 years.\n``` research at the Centr```\n``` research at the Centr```\n```code block```",
      },
    ],
    author: { id: 1, firstname: "Vlad", lastname: "Raniuk" },
    created_at: new Date(),
    updated_at: new Date(),
  },
  {
    id: 2,
    title: "odio. Phasellus at augue id ante dictum",
    subtitle: "lacus pede sagittis augue, eu tempor erat neque non quam.",
    section: [
      {
        id: 1,
        title:
          "Noone saw that coming, this is what waits us all at the end of time!",
        content:
          "Stephen William Hawking CH CBE FRS FRSA (8 January 1942 – 14 March 2018) was an English theoretical physicist, cosmologist, and author who was director of research at the Centre for Theoretical Cosmology at the University of Cambridge at the time of his death.[18][19][8] He was the Lucasian Professor of Mathematics at the University of Cambridge between 1979 and 2009.\n\n> Hawking was born in Oxford into a family of doctors. Hawking began his university education at University College, Oxford, in October 1959 at the age of 17, where he received a first-class BA (Hons.) degree in physics. He began his graduate work at Trinity Hall, Cambridge, in October 1962, where he obtained his PhD degree in applied mathematics and theoretical physics, specialising in general relativity and cosmology in March 1966. During this period—in 1963—Hawking was diagnosed with an early-onset, slow-progressing form of motor neurone disease (also known as amyotrophic lateral sclerosis (ALS) or Lou Gehrig's disease) that gradually paralysed him over the decades.[20][21] After the loss of his speech, he was able to communicate through a speech-generating device—initially through use of a handheld switch, and eventually by using a single cheek muscle.\n\n![1200px-AngusYoung.jpeg](http://localhost:1337/uploads/1200px_Angus_Young_611875abcd.jpeg)\n\nHawking's scientific works included a collaboration with Roger Penrose on gravitational singularity theorems in the framework of general relativity and the theoretical prediction that black holes emit radiation, often called Hawking radiation. Initially, Hawking radiation was controversial. By the late 1970s and following the publication of further research, the discovery was widely accepted as a significant breakthrough in theoretical physics. Hawking was the first to set out a theory of cosmology explained by a union of the general theory of relativity and quantum mechanics. He was a vigorous supporter of the many-worlds interpretation of quantum mechanics.[22][23]\n\nHawking achieved commercial success with several works of popular science in which he discussed his theories and cosmology in general. His book A Brief History of Time appeared on the Sunday Times bestseller list for a record-breaking 237 weeks. Hawking was a Fellow of the Royal Society, a lifetime member of the Pontifical Academy of Sciences, and a recipient of the Presidential Medal of Freedom, the highest civilian award in the United States. In 2002, Hawking was ranked number 25 in the BBC's poll of the 100 Greatest Britons. He died on 14 March 2018 at the age of 76, after living with motor neurone disease for more than 50 years.\n``` research at the Centr```\n``` research at the Centr```\n```code block```",
      },
    ],
    author: { id: 1, firstname: "Vlad", lastname: "Raniuk" },
    created_at: new Date(),
    updated_at: new Date(),
  },
  {
    id: 3,
    title: "Quisque imperdiet, erat nonummy ultricies ornare, elit",
    subtitle:
      "a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam",
    section: [
      {
        id: 1,
        title:
          "Noone saw that coming, this is what waits us all at the end of time!",
        content:
          "Stephen William Hawking CH CBE FRS FRSA (8 January 1942 – 14 March 2018) was an English theoretical physicist, cosmologist, and author who was director of research at the Centre for Theoretical Cosmology at the University of Cambridge at the time of his death.[18][19][8] He was the Lucasian Professor of Mathematics at the University of Cambridge between 1979 and 2009.\n\n> Hawking was born in Oxford into a family of doctors. Hawking began his university education at University College, Oxford, in October 1959 at the age of 17, where he received a first-class BA (Hons.) degree in physics. He began his graduate work at Trinity Hall, Cambridge, in October 1962, where he obtained his PhD degree in applied mathematics and theoretical physics, specialising in general relativity and cosmology in March 1966. During this period—in 1963—Hawking was diagnosed with an early-onset, slow-progressing form of motor neurone disease (also known as amyotrophic lateral sclerosis (ALS) or Lou Gehrig's disease) that gradually paralysed him over the decades.[20][21] After the loss of his speech, he was able to communicate through a speech-generating device—initially through use of a handheld switch, and eventually by using a single cheek muscle.\n\n![1200px-AngusYoung.jpeg](http://localhost:1337/uploads/1200px_Angus_Young_611875abcd.jpeg)\n\nHawking's scientific works included a collaboration with Roger Penrose on gravitational singularity theorems in the framework of general relativity and the theoretical prediction that black holes emit radiation, often called Hawking radiation. Initially, Hawking radiation was controversial. By the late 1970s and following the publication of further research, the discovery was widely accepted as a significant breakthrough in theoretical physics. Hawking was the first to set out a theory of cosmology explained by a union of the general theory of relativity and quantum mechanics. He was a vigorous supporter of the many-worlds interpretation of quantum mechanics.[22][23]\n\nHawking achieved commercial success with several works of popular science in which he discussed his theories and cosmology in general. His book A Brief History of Time appeared on the Sunday Times bestseller list for a record-breaking 237 weeks. Hawking was a Fellow of the Royal Society, a lifetime member of the Pontifical Academy of Sciences, and a recipient of the Presidential Medal of Freedom, the highest civilian award in the United States. In 2002, Hawking was ranked number 25 in the BBC's poll of the 100 Greatest Britons. He died on 14 March 2018 at the age of 76, after living with motor neurone disease for more than 50 years.\n``` research at the Centr```\n``` research at the Centr```\n```code block```",
      },
    ],
    author: { id: 1, firstname: "Vlad", lastname: "Raniuk" },
    created_at: new Date(),
    updated_at: new Date(),
  },
]
