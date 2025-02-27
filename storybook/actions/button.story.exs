defmodule Storybook.SaladUIComponents.Button do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def imports, do: [{SaladUI.Icon, [icon: 1]}]

  # def function, do: &SaladStorybookWeb.SaladUIComponents.button/1
  def function, do: &SaladUI.Button.button/1

  def variations do
    [
      %VariationGroup{
        id: :colors,
        description: "Color variations with `variant` attribute.",
        variations: [
          %Variation{
            id: :color_default,
            slots: ["Button"]
          }
        ]
      },
      %Variation{
        id: :custom_class,
        attributes: %{
          class: "rounded-full",
          variant: "destructive",
          size: "lg"
        },
        slots: ["Disabled"]
      },
      %Variation{
        id: :disabled,
        attributes: %{
          disabled: true
        },
        slots: ["Disabled"]
      },
      %Variation{
        id: :with_icon,
        attributes: %{
          icon_button: true
        },
        slots: [
          """
          Button
          <:svg>
            <.icon name="alert-02" class="size-space-24" />
          </:svg>
          """
        ]
      },
      %Variation{
        id: :with_start_icon,
        attributes: %{
          start_icon: true
        },
        slots: [
          """
          Button
          <:svg>
            <.icon name="volleyball" class="w-6 h-6" />
          </:svg>
          """
        ]
      },
      %Variation{
        id: :with_end_icon,
        attributes: %{
          end_icon: true
        },
        slots: [
          """
          Button
          <:svg>
            <.icon name="basketball" class="w-6 h-6" />
          </:svg>
          """
        ]
      }
    ]
  end
end
