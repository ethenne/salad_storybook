defmodule MoonStorybook.MoonUIComponents.Authenticator do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &MoonUI.Authenticator.authenticator/1

  def imports,
    do: [
      {MoonUI.Authenticator, [authenticator_item: 1]}
    ]

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{},
        slots: [
          """
            <.authenticator_item/>
            <.authenticator_item/>
            <.authenticator_item/>
            <.authenticator_item/>
            <.authenticator_item/>
            <.authenticator_item/>
          """
        ]
      }
    ]
  end
end
