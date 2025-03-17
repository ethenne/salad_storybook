defmodule Storybook.MoonUIComponents.Button do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.IconButton.icon_button/1
  def imports, do: [{MoonUI.Icon, [icon: 1]}]

  def variations do
    [
      %Variation{
        id: :default,
        slots: [
          """
           <.icon name="star"/>
          """
        ]
      }
    ]
  end
end
