defmodule Storybook.SaladUIComponents.Alert do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias SaladStorybookWeb.CoreComponents
  alias SaladUI.Alert

  # def imports, do: [{SaladUI.Icon, [icon: 1]}]

  def function, do: &Alert.alert/1

  # def imports, do: [{Alert, [alert_title: 1, alert_description: 1]}, {CoreComponents, [icon: 1]}]

  # def variations do
  #   [
  #     %Variation{
  #       id: :default_alert,
  #       template: """
  #       <.alert>
  #         <.icon name="keyboard" />
  #         <.alert_title>Heads up!</.alert_title>
  #         <.alert_description>
  #           You can add components to your app using the cli
  #         </.alert_description>
  #       </.alert>
  #       """,
  #       attributes: %{}
  #     },
  #     %Variation{
  #       id: :destructive,
  #       template: """
  #       <.alert variant="destructive">
  #         <.icon name="alert" />
  #         <.alert_title>Heads up!</.alert_title>
  #         <.alert_description>
  #           You can add components to your app using the cli
  #         </.alert_description>
  #       </.alert>
  #       """,
  #       attributes: %{}
  #     }
  #   ]
  # end
end
