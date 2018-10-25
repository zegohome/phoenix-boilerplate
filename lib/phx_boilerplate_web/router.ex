defmodule PhxBoilerplateWeb.Router do
  use PhxBoilerplateWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxBoilerplateWeb do
    pipe_through :api
  end
end
