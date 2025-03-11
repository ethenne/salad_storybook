defmodule Storybook.MoonUIComponents.Checkbox do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.Checkbox.checkbox/1
  def imports, do: [{MoonUI.Label, [{:label, 1}]}]

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{
          value: true,
          label: "I'm a label"
        }
      }
    ]
  end
end
