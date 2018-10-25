defmodule PhxBoilerplateWeb.Router do
  use PhxBoilerplateWeb, :router

  # add auth plug for basic auth
  pipeline :api_auth do
    # plug PhxBoilerplate.Auth
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhxBoilerplateWeb do
    pipe_through :api
  end

  scope "/api", PhxBoilerplateWeb do
    pipe_through :api
    pipe_through :api_auth
  end
end
