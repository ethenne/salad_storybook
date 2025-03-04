defmodule Storybook.SaladUIComponents.RadioGroup do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &SaladUI.Radio.radio/1

  def variations do
    [
      %Variation{
        id: :radio,
        template: """
        <.radio id="checked" checked={true}/>
        """,
        attributes: %{
          value: true
        }
      },
      %Variation{
        id: :radio_unchecked,
        template: """
        <.radio id="unchecked"/>
        """
      }
    ]
  end
end
