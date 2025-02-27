defmodule Storybook.SaladUIComponents.Chip do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &SaladUI.Chip.chip/1

  def imports, do: [{SaladUI.Label, [{:label, 1}]}]

  def variations do
    [
      %Variation{
        id: :default_chip,
        slots: ["Chip"]
      }
    ]
  end
end
