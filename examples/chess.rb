class Game
  def initialize(input, output)
    @input  = input
    @output = output
    @board  = Board.new
  end

  def play
    while @board.playing?
      @output.puts  display_board
      @output.puts  display_turn
      @output.print prompt_start_location
      start_location = @input.gets.chomp

      @output.puts  moves_for(start_location)
      @output.print prompt_end_location
      end_location = @input.gets.chomp

      @output.puts
      @baord.move start_location, end_location
      @output.puts move_summary(start_location, end_location)
      @output.puts
    end

    @output.puts display_board
    @output.puts
    @output.puts game_summary
  end

  def display_turn
    "#{@board.current_player}'s turn."
  end
end

Game.new($stdin, $stdout).play

__END__
$ ruby chess.rb

"8  ♜  ♞  ♝  ♛  ♚  ♝  ♞  ♜\n" +
"7  ♟  ♟  ♟  ♟  ♟  ♟  ♟  ♟\n" +
"6                        \n" +
"5                        \n" +
"4                        \n" +
"3                        \n" +
"2  ♙  ♙  ♙  ♙  ♙  ♙  ♙  ♙\n" +
"1  ♖  ♘  ♗  ♕  ♔  ♗  ♘  ♖\n" +
"   a  b  c  d  e  f  g  h\n" +
"white's turn.\n" +
"white, your move? " +
"moves for white pawn f2: f3, f4\n" +
"white, move f2 where? " +
"\n" +
"Ok, white's pawn f2 to f3.\n" +
"\n" +

"8  ♜  ♞  ♝  ♛  ♚  ♝  ♞  ♜\n" +
"7  ♟  ♟  ♟  ♟  ♟  ♟  ♟  ♟\n" +
"6                        \n" +
"5                        \n" +
"4                        \n" +
"3                 ♙      \n" +
"2  ♙  ♙  ♙  ♙  ♙     ♙  ♙\n" +
"1  ♖  ♘  ♗  ♕  ♔  ♗  ♘  ♖\n" +
"   a  b  c  d  e  f  g  h\n" +
"black's turn.\n" +
"black, your move? " +
"moves for black pawn e7: e5, e6\n" +
"black, move e7 where? " +
"\n" +
"Ok, black's pawn e7 to e5.\n" +
"\n" +

"8  ♜  ♞  ♝  ♛  ♚  ♝  ♞  ♜\n" +
"7  ♟  ♟  ♟  ♟     ♟  ♟  ♟\n" +
"6                        \n" +
"5              ♟         \n" +
"4                        \n" +
"3                 ♙      \n" +
"2  ♙  ♙  ♙  ♙  ♙     ♙  ♙\n" +
"1  ♖  ♘  ♗  ♕  ♔  ♗  ♘  ♖\n" +
"   a  b  c  d  e  f  g  h\n" +
"white's turn.\n" +
"white, your move? " +
"moves for white pawn g2: g3, g4\n" +
"white, move g2 where? " +
"\n" +
"Ok, white's pawn g2 to g4.\n" +
"\n" +


"8  ♜  ♞  ♝  ♛  ♚  ♝  ♞  ♜\n" +
"7  ♟  ♟  ♟  ♟     ♟  ♟  ♟\n" +
"6                        \n" +
"5              ♟         \n" +
"4                    ♙   \n" +
"3                 ♙      \n" +
"2  ♙  ♙  ♙  ♙  ♙        ♙\n" +
"1  ♖  ♘  ♗  ♕  ♔  ♗  ♘  ♖\n" +
"   a  b  c  d  e  f  g  h\n" +
"black's turn.\n" +
"black, your move? " +
"moves for black queen d8: h4, g5, f6, e7\n" +
"black, move d8 where? " +
"\n" +
"Ok, black's queen d8 to h4.\n" +
"\n" +

"8  ♜  ♞  ♝     ♚  ♝  ♞  ♜\n" +
"7  ♟  ♟  ♟  ♟     ♟  ♟  ♟\n" +
"6                        \n" +
"5              ♟         \n" +
"4                    ♙  ♛\n" +
"3                 ♙      \n" +
"2  ♙  ♙  ♙  ♙  ♙        ♙\n" +
"1  ♖  ♘  ♗  ♕  ♔  ♗  ♘  ♖\n" +
"   a  b  c  d  e  f  g  h\n" +
"\n" +
"Checkmate, black wins.\n"
