import { Topic, TopicResponse } from "../data/articles"

export function mapTopicResponseToTopic(response: TopicResponse): Topic {
  return {
    ...response,
    id: response.strapiId,
  }
}
