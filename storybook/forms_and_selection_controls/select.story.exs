defmodule SaladUI.Stories.SelectStory do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &SaladUI.Select.select/1

  def variations do
    [
      %Variation{
        id: :default,
        description: "A basic select component with options",
        attributes: %{
          id: "fruit-select",
          label: "Choose a fruit",
          name: "fruit",
          size: "md"
        },
        slots: [
          """
          <option value="apple">Apple</option>
          <option value="banana">Banana</option>
          <option value="blueberry">Blueberry</option>
          <option value="grapes">Grapes</option>
          <option value="pineapple">Pineapple</option>
          """
        ]
      },
      %Variation{
        id: :with_hint,
        description: "Select with a hint",
        attributes: %{
          id: "fruit-select-hint",
          label: "Choose a fruit",
          name: "fruit",
          size: "md"
        },
        slots: [
          """
          <option value="apple">Apple</option>
          <option value="banana">Banana</option>
          <option value="blueberry">Blueberry</option>
          <option value="grapes">Grapes</option>
          <option value="pineapple">Pineapple</option>
          """,
          """
          <:hint>
            Select your favorite fruit from the list.
          </:hint>
          """
        ]
      },
      %Variation{
        id: :disabled,
        description: "Disabled select field",
        attributes: %{
          id: "disabled-select",
          label: "Disabled Select",
          name: "fruit",
          size: "md",
          disabled: true
        },
        slots: [
          """
          <option value="apple">Apple</option>
          <option value="banana">Banana</option>
          <option value="blueberry">Blueberry</option>
          <option value="grapes">Grapes</option>
          <option value="pineapple">Pineapple</option>
          """
        ]
      },
      %Variation{
        id: :multiple,
        description: "Multiple select",
        attributes: %{
          id: "multiple-select",
          label: "Select multiple fruits",
          name: "fruits",
          size: "md",
          multiple: true
        },
        slots: [
          """
          <option value="apple">Apple</option>
          <option value="banana">Banana</option>
          <option value="blueberry">Blueberry</option>
          <option value="grapes">Grapes</option>
          <option value="pineapple">Pineapple</option>
          """
        ]
      }
    ]
  end
end
