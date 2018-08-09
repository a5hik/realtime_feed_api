defmodule RealtimeFeedApi.Router do
  use RealtimeFeedApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RealtimeFeedApi do
    pipe_through :api
  end
end
