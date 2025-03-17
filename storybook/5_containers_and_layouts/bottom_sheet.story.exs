defmodule Storybook.MoonUIComponents.BottomSheet do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias MoonUI.Button
  alias MoonUI.Input
  alias MoonUI.Label
  alias MoonUI.BottomSheet

  def function, do: &BottomSheet.bottom_sheet_content/1

  def imports,
    do: [
      {BottomSheet,
       [
         bottom_sheet: 1,
         bottom_sheet_trigger: 1,
         bottom_sheet_header: 1,
         bottom_sheet_title: 1,
         bottom_sheet_footer: 1,
         bottom_sheet_description: 1,
         bottom_sheet_close: 1
       ]},
      {Button, [button: 1]},
      {Input, [input: 1]},
      {Label, [label: 1]}
    ]

  def variations do
    [
      %Variation{
        id: :default,
        description: """

        `bottom_sheet_trigger` and `bottom_sheet_close` must set `target` attribute to id of `bottom_sheet_content`
        """,
        template: """
        <.bottom_sheet>
          <.bottom_sheet_trigger target="bottom-sheet-single-default">
            <.button variant="outline">Open</.button>
          </.bottom_sheet_trigger>
        <.psb-variation />
        </.bottom_sheet>
        """,
        attributes: %{id: "bottom-sheet-single-default"},
        slots: [
          """
                <.bottom_sheet_header>
                <.bottom_sheet_title>Edit profile</.bottom_sheet_title>
                <.bottom_sheet_description>
                  Make changes to your profile here. Click save when you're done.
                </.bottom_sheet_description>
              </.bottom_sheet_header>
              <div class="grid gap-4 py-4">
                <div class="grid grid-cols-4 items-center gap-4">
                  <.label html-for="name" class="text-right">
                    Name
                  </.label>
                  <.input id="name" value="Pedro Duarte" class="col-span-3" />
                </div>
                <div class="grid grid-cols-4 items-center gap-4">
                  <.label html-for="username" class="text-right">
                    Username
                  </.label>
                  <.input id="username" value="@peduarte" class="col-span-3" />
                </div>
              </div>
              <.bottom_sheet_footer>
                <.bottom_sheet_close target="sheet-single-default">
                  <.button type="submit" phx-click={JS.exec("phx-hide-sheet", to: "#sheet-single-default") |> JS.push("save")}>Save changes</.button>
                </.bottom_sheet_close>
                <.button phx-click={JS.push("psb-assign")} phx-value-variation_id={:default} phx-value-show={"false"}>
          Close from back-end
          </.button>
              </.bottom_sheet_footer>
          """
        ]
      }
    ]
  end
end
