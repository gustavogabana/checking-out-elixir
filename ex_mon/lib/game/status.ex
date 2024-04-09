defmodule ExMon.Game.Status do
  alias ExMon.Game

  def print_round_message do
    IO.puts("\nThe game it's on!\n")
    IO.inspect(Game.info())
    IO.puts("\n--------------------------------\n")
  end

  def print_wrong_move_message(move) do
    IO.puts("\nInvalid move: #{move}\n")
  end
end
