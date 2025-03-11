defmodule Storybook.MoonUIComponents.RadioGroup do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.Radio.radio/1

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
