defmodule Storybook.MoonUIComponents.Dropdown do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias MoonUI.Dropdown

  def function, do: &Dropdown.dropdown_content/1

  def imports,
    do: [
      {Dropdown, [dropdown: 1, dropdown_trigger: 1]},
      {MoonUI.Menu,
       [menu: 1, menu_label: 1, menu_separator: 1, menu_item: 1, menu_shortcut: 1, menu_group: 1]},
      {MoonUI.Button, [button: 1]},
      {MoonUI.Icon, [icon: 1]}
    ]

  def template do
    """
    <div class="mt-24">
    <.dropdown>
          <.dropdown_trigger>
            <.button variant="outline">Click me</.button>
          </.dropdown_trigger>
    <.psb-variation/>
    </.dropdown>
    </div>
    """
  end

  def variations do
    [
      %Variation{
        id: :menu,
        attributes: %{},
        slots: [
          """
            <.menu class="w-56 border border-gray-200 rounded-md bg-white">
              <.menu_label>Account</.menu_label>
              <.menu_separator />
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
              <.menu_separator />
            </.menu>
          """
        ]
      },
      %VariationGroup{
        id: :side,
        description: "Dropdown multiple side",
        variations:
          for side <- ~w(left right top bottom) do
            %Variation{
              id: :"#{side}",
              attributes: %{
                side: side
              },
              slots: [
                """
                <.menu>
                Dropdown content #{side}
                </.menu>
                """
              ]
            }
          end
      },
      %VariationGroup{
        id: :side,
        description: "Dropdown multiple side",
        variations:
          for align <- ~w(start center end) do
            %Variation{
              id: :"#{align}",
              attributes: %{
                align: align
              },
              slots: [
                """
                <.menu>
                Dropdown content #{align}
                </.menu>
                """
              ]
            }
          end
      }
    ]
  end
end
