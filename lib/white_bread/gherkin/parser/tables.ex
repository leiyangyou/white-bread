defmodule WhiteBread.Gherkin.Parser.Tables do

  def add_table_row_to_last_step(scenario, line) do
    new_row = table_line_to_columns(line)
    %{steps: current_steps} = scenario
    [%{table_data: current_rows} = last_step | other_steps] = current_steps
      |> Enum.reverse

    updated_step = %{last_step | table_data: current_rows ++ [new_row]}
    updated_steps = [updated_step | other_steps] |> Enum.reverse

    %{scenario | steps: updated_steps}
  end

  def add_table_row_to_example(scenario_outline, line) do
    new_row = table_line_to_columns(line)
    update_examples = scenario_outline.examples ++ [new_row]
    %{scenario_outline | examples: update_examples}
  end

  defp table_line_to_columns(line) do
    line
    |> String.split("|", trim: true)
    |> Enum.map(&String.strip/1)
  end

end
