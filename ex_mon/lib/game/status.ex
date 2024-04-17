defmodule ExMon.Game.Status do

  def print_round_message(%{status: :started} = info) do
    IO.puts("\nThe game it's on!\n")
    IO.inspect(info)
    IO.puts("\n--------------------------------\n")
  end

  def print_round_message(%{status: :continue, turn: player} = info) do
    IO.puts("\nIt's #{player} turn!\n")
    IO.inspect(info)
    IO.puts("\n--------------------------------\n")
  end

  def print_round_message(%{status: :game_over} = info) do
    IO.puts("\nGame Over.\n")
    IO.inspect(info)
    IO.puts("\n--------------------------------\n")
  end

  def print_wrong_move_message(move) do
    IO.puts("\nInvalid move: #{move}\n")
  end

  def print_move_message(:computer, :attack, damage) do
    IO.puts("\nThe Player attackerd the computer dealing #{damage} damage.\n")
  end

  def print_move_message(:player, :attack, damage) do
    IO.puts("\nThe Computer attackerd the computer dealing #{damage} damage.\n")
  end

end
