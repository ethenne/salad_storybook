defmodule Storybook.MoonUIComponents.Tooltip do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.Tooltip.tooltip_content/1
  def imports, do: [{MoonUI.Tooltip, [tooltip: 1]}, {MoonUI.Button, [button: 1]}]

  def template do
    """
    <.tooltip>
    <.button variant="outline">Hover me</.button>
    <.psb-variation />
    </.tooltip>
    """
  end

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{},
        slots: [
          """
            <p>Hi! I'm a tooltip.</p>
          """
        ]
      }
    ]
  end
end
