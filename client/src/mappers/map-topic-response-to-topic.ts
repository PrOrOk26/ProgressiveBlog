import { Topic, TopicResponse } from "../types"

export function mapTopicResponseToTopic(response: TopicResponse): Topic {
  return {
    ...response,
    id: response.strapiId,
  }
}
