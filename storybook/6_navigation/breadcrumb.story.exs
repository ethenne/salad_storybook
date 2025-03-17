defmodule Storybook.MoonUIComponents.Breadcrumb do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias MoonUI.Breadcrumb
  alias MoonUI.DropdownMenu
  alias MoonUI.Menu

  def function, do: &Breadcrumb.breadcrumb/1

  def imports,
    do: [
      {Breadcrumb,
       [
         breadcrumb_list: 1,
         breadcrumb_item: 1,
         breadcrumb_link: 1,
         breadcrumb_separator: 1,
         breadcrumb_ellipsis: 1,
         breadcrumb_page: 1
       ]},
      {Dropdown, [dropdown: 1, dropdown_trigger: 1, dropdown_content: 1]},
      {Menu,
       [menu: 1, menu_label: 1, menu_separator: 1, menu_item: 1, menu_shortcut: 1, menu_group: 1]}
    ]

  def variations do
    [
      %Variation{
        id: :breadcrumb,
        template: """
        <.breadcrumb>
          <.breadcrumb_list>
            <.breadcrumb_item>
              <.breadcrumb_link href="/">Home</.breadcrumb_link>
            </.breadcrumb_item>
            <.breadcrumb_separator />
            <.breadcrumb_item>
              <.breadcrumb_link href="">Components</.breadcrumb_link>
            </.breadcrumb_item>
            <.breadcrumb_separator />
            <.breadcrumb_item>
              <.breadcrumb_page>Breadcrumb</.breadcrumb_page>
            </.breadcrumb_item>
          </.breadcrumb_list>
        </.breadcrumb>
        """,
        attributes: %{}
      }
      # will be uncommented after dropdown implementation
      # %Variation{
      #   id: :breadcrumb,
      #   template: """
      #   <.breadcrumb>
      #     <.breadcrumb_list>
      #       <.breadcrumb_item>
      #         <.breadcrumb_link href="/">Home</.breadcrumb_link>
      #       </.breadcrumb_item>
      #       <.breadcrumb_separator />
      #       <.breadcrumb_item>
      #         <.dropdown>
      #           <.dropdown_trigger class="flex items-center gap-1">
      #             <.breadcrumb_ellipsis class="h-4 w-4" />
      #             <span class="sr-only">toggle menu</span>
      #           </.dropdown_trigger>
      #           <.dropdown_content align="start">
      #             <.menu>
      #               <.menu_item>Documentation</.menu_item>
      #               <.menu_item>Themes</.menu_item>
      #               <.menu_item>Github</.menu_item>
      #             </.menu>
      #           </.dropdown_content>
      #         </.dropdown>
      #       </.breadcrumb_item>
      #       <.breadcrumb_separator />
      #       <.breadcrumb_item>
      #         <.breadcrumb_link href="">Components</.breadcrumb_link>
      #       </.breadcrumb_item>
      #       <.breadcrumb_separator />
      #       <.breadcrumb_item>
      #         <.breadcrumb_page>Breadcrumb</.breadcrumb_page>
      #       </.breadcrumb_item>
      #     </.breadcrumb_list>
      #   </.breadcrumb>
      #   """,
      #   attributes: %{}
      # }
    ]
  end
end
