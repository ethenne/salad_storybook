defmodule Storybook.Examples.ServerEvent do
  @moduledoc false
  use PhoenixStorybook.Story, :example

  import MoonUI.Button
  import MoonUI.Input
  import MoonUI.Label
  import MoonUI.Drower

  alias Phoenix.LiveView.JS

  def doc do
    "An example of trigger client event/action from server."
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <.drower>
      <.drower_trigger target="my-sheet">
        <.button variant="outline">Open</.button>
      </.drower_trigger>
      <.drower_content id="my-sheet">
        <.drower_header>
          <.drower_title>Edit profile</.drower_title>
          <.drower_description>
            Make changes to your profile here. Click save when you're done.
          </.drower_description>
        </.drower_header>
        <div class="grid gap-4 py-4">
          <div class="grid grid-cols-4 items-center gap-4">
            <.label for="name" class="text-right">
              Name
            </.label>
            <.input id="name" value="Pedro Duarte" class="col-span-3" />
          </div>
          <div class="grid grid-cols-4 items-center gap-4">
            <.label for="username" class="text-right">
              Username
            </.label>
            <.input id="username" value="@peduarte" class="col-span-3" />
          </div>
        </div>
        <.drower_footer>
          <.drower_close target="my-sheet">
            <.button
              type="submit"
              phx-click={JS.exec("phx-hide-sheet", to: "#my-sheet") |> JS.push("save")}
            >
              Save changes
            </.button>
          </.drower_close>
          <.button phx-click={JS.push("update")}>
            Close from back-end
          </.button>
        </.drower_footer>
      </.drower_content>
    </.drower>
    """
  end

  @impl true
  def handle_event("update", _params, socket) do
    {:noreply, push_event(socket, "js-exec", %{to: "#my-sheet", attr: "phx-hide-sheet"})}
  end
end
