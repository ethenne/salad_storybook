defmodule MoonStorybook.Repo do
  use Ecto.Repo,
    otp_app: :moon_storybook,
    adapter: Ecto.Adapters.Postgres
end
