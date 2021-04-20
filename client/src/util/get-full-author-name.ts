import { Author } from "../types"

export function getFullAuthorName(author: Author): string {
  return `${author.firstname} ${author.lastname}`
}
