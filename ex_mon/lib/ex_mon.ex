defmodule ExMon do
  alias ExMon.{Player, Game, Game.Status, Game.Actions}

  @computer_name "Robotinik"

  def create_player(name, move_avg, move_rnd, heal) do
    Player.build(name, move_avg, move_rnd, heal)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :kick, :heal)
    |> Game.start(player)

    Status.print_round_message(Game.info())
  end

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)
  defp do_move({:ok, move}) do
    case move do
      :heal -> Actions.heal()
      move -> Actions.attack(move)
    end
    Status.print_round_message(Game.info())
  end
end
