defmodule RealtimeFeedApi.FeedChannel do
  use RealtimeFeedApi.Web, :channel

  def join("feeds", payload, socket) do
    {:ok, "Joined feeds", socket}
  end

  def handle_out(event, payload, socket) do
    push socket, event, payload
    {:noreply, socket}
  end

  def broadcast_create(feed) do
    payload = %{
      "id" => to_string(feed.id),
      "title" => feed.title,
      "description" => feed.description
    }

    RealtimeFeedApi.Endpoint.broadcast("feeds", "app/FeedsPage/HAS_NEW_FEEDS", payload)
  end
end
