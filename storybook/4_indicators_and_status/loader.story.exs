defmodule MoonStorybook.MoonUIComponents.Loader do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.Loader.loader/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{}
      }
    ]
  end
end
