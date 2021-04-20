import { format as dateFnsFormat } from "date-fns"

export function formatDate(date: Date | number, format: DateFormats): string {
  return dateFnsFormat(date, format)
}

export enum DateFormats {
  DEFAULT = "MM-dd-yyyy",
  SECONDARY = "MMM d, yyyy",
}
