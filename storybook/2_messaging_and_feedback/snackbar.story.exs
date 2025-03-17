defmodule Storybook.MoonUIComponents.Snackbar do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias MoonStorybookWeb.CoreComponents
  alias MoonUI.Snackbar

  def function, do: &Snackbar.snackbar/1

  def imports do
    [
      {MoonUI.Icon, [icon: 1]},
      {MoonUI.Snackbar, [snackbar_title: 1, snackbar_description: 1]}
    ]
  end

  def variations do
    [
      %Variation{
        id: :default_snackbar,
        attributes: %{variant: "neutral"},
        slots: [
          "<.snackbar_title> <.icon name='alert' /> Heads up!</.snackbar_title>"
        ]
      }
    ]
  end
end
