defmodule Storybook.MoonUIComponents.Chip do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.Chip.chip/1

  def imports, do: [{MoonUI.Label, [{:label, 1}]}]

  def variations do
    [
      %Variation{
        id: :default_chip,
        slots: ["Chip"]
      }
    ]
  end
end
