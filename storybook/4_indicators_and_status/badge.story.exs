defmodule Storybook.MoonUIComponents.Badge do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.Badge.badge/1

  def variations do
    [
      %Variation{
        id: :default,
        slots: [""]
      },
      %VariationGroup{
        id: :badge_variants,
        description: "Color variations with `variant` attribute.",
        variations: [
          %Variation{
            id: :color_default,
            slots: ["Default"]
          },
          %Variation{
            id: :color_secondary,
            attributes: %{
              variant: "negative"
            },
            slots: ["Negative"]
          },
          %Variation{
            id: :color_destructive,
            attributes: %{
              variant: "info"
            },
            slots: ["Info"]
          },
          %Variation{
            id: :color_outline,
            attributes: %{
              variant: "outline"
            },
            slots: ["Outline"]
          }
        ]
      }
    ]
  end
end
