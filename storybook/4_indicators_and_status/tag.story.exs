defmodule MoonStorybook.MoonUIComponents.Tag do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias MoonUI.Tag

  def function, do: &MoonUI.Tag.tag/1

  def imports,
    do: [
      {MoonUI.Icon, [icon: 1]}
    ]

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{},
        slots: ["Tag"]
      },
      %Variation{
        id: :with_placeholder_class,
        attributes: %{},
        slots: [
          """
          <.icon name="star" />
          <span>Tag</span>
          """
        ]
      }
    ]
  end
end
