defmodule Storybook.Root do
  # See https://hexdocs.pm/phoenix_storybook/PhoenixStorybook.Index.html for full index
  # documentation.
  @moduledoc false
  use PhoenixStorybook.Index

  def folder_icon, do: {:local, "hero-moonui"}
  def folder_name, do: "MoonUI"

  def entry("welcome") do
    [
      name: "Welcome",
      icon: {:fa, "hand-wave", :thin}
    ]
  end
end
