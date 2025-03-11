defmodule Storybook.MoonUIComponents.Alert do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  alias MoonStorybookWeb.CoreComponents
  alias MoonUI.Alert

  def function, do: &Alert.alert/1

  def imports do
    [
      {MoonUI.Icon, [icon: 1]},
      {MoonUI.Alert, [alert_title: 1, alert_description: 1]}
    ]
  end

  def variations do
    [
      %Variation{
        id: :default_alert,
        attributes: %{variant: "positive"},
        slots: [
          "<.alert_title> <.icon name='alert' /> Heads up!</.alert_title>"
        ]
      },
      %Variation{
        id: :destructive,
        slots: [
          "<div class='moon-alert-title-wrapper'>
            <.alert_title>
              <.icon name='alert' />
              Heads up!
            </.alert_title>
          </div>
          <.alert_description>
            You can add components to your app using the cli
          </.alert_description>
"
        ],
        attributes: %{
          variant: "info"
        }
      },
      %Variation{
        id: :actions,
        slots: [
          "
              <.alert_title>
                <.icon name='alert' />
                Heads up!
              </.alert_title>
              <.alert_description>
                You can add components to your app using the cli
              </.alert_description>
              <:action>
                <button>
                  Action
                </button>
                <button>
                 <.icon name='close'/>
                </button>
              </:action>
          "
        ],
        attributes: %{
          variant: "info"
        }
      }
    ]
  end
end
