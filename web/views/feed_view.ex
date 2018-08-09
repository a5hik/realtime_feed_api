defmodule RealtimeFeedApi.FeedView do
  use RealtimeFeedApi.Web, :view

  def render("index.json", %{feeds: feeds}) do
    %{data: render_many(feeds, RealtimeFeedApi.FeedView, "feed.json")}
  end

  def render("show.json", %{feed: feed}) do
    %{data: render_one(feed, RealtimeFeedApi.FeedView, "feed.json")}
  end

  def render("feed.json", %{feed: feed}) do
    %{id: feed.id,
      title: feed.title,
      description: feed.description}
  end
end
