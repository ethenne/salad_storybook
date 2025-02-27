defmodule Storybook.SaladUIComponents.Input do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias SaladStorybookWeb.SaladUIComponents

  def function, do: &SaladUI.Input.input/1
  def imports, do: [{SaladStorybookWeb.CoreComponents, [simple_form: 1]}]

  def template do
    """
    <.simple_form :let={f} for={%{}} as={:story} class="w-full">
      <.psb-variation-group/>
    </.simple_form>
    """
  end

  def variations do
    [
      %VariationGroup{
        id: :basic_inputs,
        variations: [
          %Variation{
            id: :text_input,
            attributes: %{
              type: "text",
              label: "Text input",
              placeholder: "Text input"
            }
          }
        ]
      },
      %Variation{
        id: :hint_input,
        attributes: %{
          type: "text",
          label: "Input with hint",
          placeholder: ""
        },
        slots: [
          """
          <:hint>
            Enter your name here.
          </:hint>
          """
        ]
      }
    ]
  end
end
