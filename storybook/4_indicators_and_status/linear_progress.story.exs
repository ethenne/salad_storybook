defmodule Storybook.MoonUIComponents.Progress do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.Progress.progress/1

  def variations do
    [
      %Variation{
        id: :progress_bar,
        attributes: %{
          value: 20
        }
      }
    ]
  end
end
