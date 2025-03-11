defmodule MoonStorybook.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      MoonStorybookWeb.Telemetry,
      # MoonStorybook.Repo,
      {DNSCluster, query: Application.get_env(:moon_storybook, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: MoonStorybook.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: MoonStorybook.Finch},
      # Start a worker by calling: MoonStorybook.Worker.start_link(arg)
      # {MoonStorybook.Worker, arg},
      # Start to serve requests, typically the last entry
      TwMerge.Cache,
      MoonStorybookWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MoonStorybook.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    MoonStorybookWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
