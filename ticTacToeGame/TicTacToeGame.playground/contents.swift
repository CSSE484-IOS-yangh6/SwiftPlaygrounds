

// TODO: Create the TicTacToeGame class

class TicTacToeGame: CustomStringConvertible {
    
    enum MarkType: String {
        case none = "-"
        case x = "X"
        case o = "O"
    }
    
    var board: [MarkType]
    
    enum State: String {
        case xTurn = "X's Turn"
        case oTurn = "O's Turn"
        case xWin = "X Wins"
        case oWin = "O Wins"
        case tie = "Tie Game"
    }
    
    var state: State
    
    init() {
//        board = [MarkType]()
//        for _ in 0..<9 {
//            board.append(MarkType.none)
//        }
        board = [MarkType](repeating: .none, count: 9)
        state = .xTurn
    }
    
    func getBoardString() -> String {
        var gameString = ""
        
        for i in 0..<9 {
            gameString += board[i].rawValue
        }
        
        return gameString
    }
    
    var description: String {
        return "\(state) Board: \(getBoardString())"
    }
    
    func pressedSquareAt() {
        
    }
}

/* ----------------- Official Playground testing ----------------- */
var game = TicTacToeGame()
//game.pressedSquareAt(0)
//game.pressedSquareAt(1)
//game.pressedSquareAt(3)
//game.pressedSquareAt(2)
//game.pressedSquareAt(6)


//var game2 = TicTacToeGame()
//game2.board = [.x, .x, .o,
//                .none, .none, .none,
//                .o, .none, .none]
//game2.pressedSquareAt(8)
//game2.pressedSquareAt(4)


//var game3 = TicTacToeGame()
//game3.board = [.x, .x, .o,
//    .o, .o, .x,
//    .x, .o, .none]
//game3.pressedSquareAt(8)

