defmodule Storybook.MoonUIComponents.Menu do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.Menu.menu/1

  def imports,
    do: [
      {MoonUI.Menu,
       [menu_label: 1, menu_separator: 1, menu_item: 1, menu_shortcut: 1, menu_group: 1]},
      {MoonUI.Icon, [icon: 1]}
    ]

  def variations do
    [
      %Variation{
        id: :menu,
        attributes: %{
          "class" => "w-56"
        },
        slots: [
          """
          <.menu_label>Account</.menu_label>
            <.menu_item>
              <.icon name="hero-user" class="mr-2 h-4 w-4" />
              <span>Profile</span>
              <.menu_shortcut>⌘P</.menu_shortcut>
            </.menu_item>
            <.menu_item>
              <.icon name="hero-banknotes" class="mr-2 h-4 w-4" />
              <span>Billing</span>
              <.menu_shortcut>⌘B</.menu_shortcut>
            </.menu_item>
            <.menu_item>
              <.icon name="hero-cog-6-tooth" class="mr-2 h-4 w-4" />
              <span>Settings</span>
              <.menu_shortcut>⌘S</.menu_shortcut>
            </.menu_item>
          """
        ]
      }
    ]
  end
end
