defmodule RealtimeFeedApi.FeedTest do
  use RealtimeFeedApi.ModelCase

  alias RealtimeFeedApi.Feed

  @valid_attrs %{description: "some description", title: "some title"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Feed.changeset(%Feed{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Feed.changeset(%Feed{}, @invalid_attrs)
    refute changeset.valid?
  end
end
