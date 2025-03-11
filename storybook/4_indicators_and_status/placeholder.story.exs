defmodule MoonStorybook.MoonUIComponents.Placeholder do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias MoonUI.Placeholder

  def function, do: &MoonUI.Placeholder.placeholder/1

  def variations do
    [
      %Variation{
        id: :default,
        template: """
        <div class="w-96 h-96">
          <.placeholder/>
        </div>
        """,
        attributes: %{}
      },
      %Variation{
        id: :with_placeholder_class,
        template: """
          <.placeholder class="w-space-160 h-space-80"/>
        """,
        attributes: %{}
      }
    ]
  end
end
