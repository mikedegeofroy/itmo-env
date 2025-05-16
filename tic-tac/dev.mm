$pos 1
BR 50

$pos 5
ISZ 01 // turn
ISZ 03 // module for HZA7 
ISZ 10 // constant to add to id
ISZ 00 // placeholder for cell id
FFF7 // turn counter

$pos 10 // this is the board
ISZ 00 // 0 10
ISZ 00 // 1 11
ISZ 00 // 2 12
ISZ 00 // 3 13
ISZ 00 // 4 14
ISZ 00 // 5 15
ISZ 00 // 6 16
ISZ 00 // 7 17
ISZ 00 // 8 18

$pos 20 // game loop, this loops checks for a winner constantly
CLA
OUT 00
ADD 05
OUT 01
CLA
EI
ADD 10
ADD 11
ADD 12
HZA7 006
BR 71
ADD 13
ADD 14
ADD 15
HZA7 006
BR 71
ADD 16
ADD 17
ADD 18
HZA7 006
BR 71
ADD 10
ADD 14
ADD 18
HZA7 006
BR 71
ADD 12
ADD 14
ADD 16
HZA7 006
BR 71
BR 26

$pos 50
TSF 02
BR 58
ISZ 09
BR 55
BR 72
IN 02
ADD 07
MOV 08
CLA
ADD 05
MOV (08)
CLF 2
HZAD 005
CLA
ADD 05
OUT 01
CLA
EI
BR (000)

$pos 71 // game end sequence?
ADD 05
OUT 00
F000


// so the idea is to check if sum of 3 is equal to -3 or 3, then do nothing, else skip 1

// the best would be to have a command that adds skips if A and data at address X are equal.
 
// # Define a function to check if the game is over
// def check_game_over():
//     # Check for a win
//     if (board[0] == board[1] == board[2] != "-") or \
//        (board[3] == board[4] == board[5] != "-") or \
//        (board[6] == board[7] == board[8] != "-") or \
//        (board[0] == board[3] == board[6] != "-") or \
//        (board[1] == board[4] == board[7] != "-") or \
//        (board[2] == board[5] == board[8] != "-") or \
//        (board[0] == board[4] == board[8] != "-") or \
//        (board[2] == board[4] == board[6] != "-"):
//         return "win"
//     # Check for a tie
//     elif "-" not in board:
//         return "tie"
//     # Game is not over
//     else:
//         return "play"
 
// # Define the main game loop
// def play_game():
//     print_board()
//     current_player = "X"
//     game_over = False
//     while not game_over:
//         take_turn(current_player)
//         game_result = check_game_over()
//         if game_result == "win":
//             print(current_player + " wins!")
//             game_over = True
//         elif game_result == "tie":
//             print("It's a tie!")
//             game_over = True
//         else:
//             # Switch to the other player
//             current_player = "O" if current_player == "X" else "X"
 
// # Start the game
// play_game()