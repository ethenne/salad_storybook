defmodule Storybook.SaladUIComponents.Select do
  @moduledoc false
  use PhoenixStorybook.Story, :component

  def function, do: &SaladUI.Select.select/1

  # def imports,
  #   do: [
  #     {SaladUI.Select,
  #      [
  #        select_trigger: 1,
  #        select_content: 1,
  #        select_group: 1,
  #        select_label: 1,
  #        select_item: 1,
  #        select_value: 1,
  #        select_separator: 1
  #      ]},
  #     {SaladUI.Button, [button: 1]}
  #   ]

  # def variations do
  #   [
  #     %Variation{
  #       id: :select,
  #       attributes: %{
  #         name: "fruit",
  #         target: "my-select",
  #         placeholder: "Select a fruit"
  #       },
  #       template: """
  #       <form class="flex flex-col items-center space-y-4">
  #         <.psb-variation />
  #         <.button type="submit" class="moon-button moon-button-filled">Submit</.button>
  #       </form>
  #       """,
  #       let: :select,
  #       slots: [
  #         """
  #           <.select_trigger builder={select}/>
  #           <.select_content class="w-full" builder={select}>
  #             <.select_group>
  #               <.select_label>Fruits</.select_label>
  #               <.select_item builder={select} value="apple" label="Apple"></.select_item>
  #               <.select_item builder={select} value="banana" label="Banana"></.select_item>
  #               <.select_item builder={select}  value="blueberry"></.select_item>
  #               <.select_separator />
  #               <.select_item builder={select} disabled value="grapes"></.select_item>
  #               <.select_item builder={select} value="pineapple"></.select_item>
  #             </.select_group>
  #           </.select_content>
  #         """
  #       ]
  #     }
  #   ]
  # end
end
