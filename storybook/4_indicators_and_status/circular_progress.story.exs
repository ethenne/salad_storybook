defmodule Storybook.MoonUIComponents.CircularProgress do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.CircularProgress.circular_progress/1

  def variations do
    [
      %Variation{
        id: :progress_bar,
        attributes: %{
          value: 70
        }
      }
    ]
  end
end
