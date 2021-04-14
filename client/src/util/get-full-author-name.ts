import { Author } from "../data/articles"

export function getFullAuthorName(author: Author): string {
  return `${author.firstname} ${author.lastname}`
}
