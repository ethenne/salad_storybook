defmodule Storybook.SaladUIComponents.SegmentedControl do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &SaladUI.SegmentedControl.segmented_control/1

  def imports,
    do: [{SaladUI.SegmentedControl, [segmented_control_item: 1]}, {SaladStorybookWeb.CoreComponents, [icon: 1]}]

  def variations do
    [
      %Variation{
        id: :default_segmented_control,
        let: :builder,
        attributes: %{name: "style_group", type: "single", value: "bold"},
        slots: [
          """
          <.segmented_control_item value="bold" builder={builder} aria-label="Toggle bold">
          <.icon name="hero-bold" class="h-4 w-4" />
          </.segmented_control_item>
          <.segmented_control_item value="italic" builder={builder} aria-label="Toggle italic">
          <.icon name="hero-italic" class="h-4 w-4" />
          </.segmented_control_item>
          <.segmented_control_item value="underline" builder={builder} aria-label="Toggle underline">
          <.icon name="hero-underline" class="h-4 w-4" />
          </.segmented_control_item>

          """
        ]
      },
      %Variation{
        id: :segmented_control_multiple,
        let: :builder,
        attributes: %{name: "multiple_group", multiple: true, value: ["bold"]},
        slots: [
          """
          <.segmented_control_item value="bold" builder={builder} aria-label="Toggle bold">
          <.icon name="hero-bold" class="h-4 w-4" />
          </.segmented_control_item>
          <.segmented_control_item value="italic" builder={builder} aria-label="Toggle italic">
          <.icon name="hero-italic" class="h-4 w-4" />
          </.segmented_control_item>
          <.segmented_control_item value="underline" builder={builder} aria-label="Toggle underline">
          <.icon name="hero-underline" class="h-4 w-4" />
          </.segmented_control_item>
          """
        ]
      }
    ]
  end
end
