defmodule Storybook.MoonUIComponents.Drower do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias MoonUI.Button
  alias MoonUI.Input
  alias MoonUI.Label
  alias MoonUI.Drower

  def function, do: &Drower.drower_content/1

  def imports,
    do: [
      {Drower,
       [
         drower: 1,
         drower_trigger: 1,
         drower_header: 1,
         drower_title: 1,
         drower_footer: 1,
         drower_description: 1,
         drower_close: 1
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

        drower support 2 side: right (end) and left (start). Default is `start`.
        `drower_trigger` and `drower_close` must set `target` attribute to id of `drower_content`
        """,
        template: """
        <.drower>
          <.drower_trigger target="drower-single-default">
            <.button variant="outline">Open</.button>
          </.drower_trigger>
        <.psb-variation />
        </.drower>
        """,
        attributes: %{id: "drower-single-default"},
        slots: [
          """
                <.drower_header>
                <.drower_title>Edit profile</.drower_title>
                <.drower_description>
                  Make changes to your profile here. Click save when you're done.
                </.drower_description>
              </.drower_header>
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
              <.drower_footer>
                <.drower_close target="drower-single-default">
                  <.button type="submit" phx-click={JS.exec("phx-hide-drower", to: "#drower-single-default") |> JS.push("save")}>Save changes</.button>
                </.drower_close>
                <.button phx-click={JS.push("psb-assign")} phx-value-variation_id={:default} phx-value-show={"false"}>
          Close from back-end
          </.button>
              </.drower_footer>
          """
        ]
      }
    ]
  end
end
