defmodule DevNull.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  require Logger

  @impl true
  def start(_type, _args) do
    Logger.info("Starting DevNull.Application...")

    children = [
      {Plug.Cowboy, scheme: :http, plug: DevNull.Router, options: [port: 4000]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DevNull.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
