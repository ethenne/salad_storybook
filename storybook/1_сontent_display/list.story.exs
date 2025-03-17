defmodule Storybook.MoonUIComponents.List do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.List.list/1

  def imports,
    do: [
      {MoonUI.List,
       [list_label: 1, list_separator: 1, list_item: 1, list_shortcut: 1, list_group: 1]},
      {MoonUI.Icon, [icon: 1]}
    ]

  def variations do
    [
      %Variation{
        id: :list,
        attributes: %{
          "class" => "w-56"
        },
        slots: [
          """
            <.list_item>
              <span>List Item 1</span>
            </.list_item>
            <.list_item>
              <span>List Item 2</span>
            </.list_item>
            <.list_item>
              <span>List Item 3</span>
            </.list_item>

          """
        ]
      }
    ]
  end
end
