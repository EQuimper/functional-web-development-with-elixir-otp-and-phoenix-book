defmodule IslandsEngine.Coordinate do
  alias __MODULE__

  # Make sure to put enforce_keys first
  # if not no effect
  @enforce_keys [:row, :col]
  defstruct [:row, :col]

  @board_range 1..10

  def new(row, col) when row in(@board_range) and col in(@board_range), do:
    {:ok, %Coordinate{row: row, col: col}}
  def new(_row, _col), do: {:error, :invalid_coordinate}
end