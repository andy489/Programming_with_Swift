// github.com/andy489

import Foundation

func valid(x: Int, y: Int, board: inout [[Int]])->Bool{
    return x>=0 && y>=0 && x<8 && y<8 && board[x][y]==0
}

func traverce(start: String, moves: Int) -> [String] {
    let xd:[Int] = [-2,-2,-1,-1,1,1,2,2],
        yd:[Int] = [-1,1,-2,2,-2,2,-1,1]
    
    var res: [String] = []
    
    let scalars = start/*.lowercased()*/.cString(using: .ascii)!
    
    let first: Int = Int(scalars[0]),
        second: Int = Int(scalars[1])
    
    let startX: Int = 7 - (second - 49),
        startY: Int = first - 97 //65
    //print("start: [\(startX),\(startY)], moves: \(moves)")
    
    var chessBoard = Array(repeating: Array(repeating: 0, count: 8), count: 8)
    //displayBoard(board: &chessBoard)
    
    //if !valid(x:startX,y:startY,board: &chessBoard) {
    //print("Invalid start position!")
    //    return res
    //}
    
    chessBoard[startX][startY] = 1
    //displayBoard(board: &chessBoard)
    var m: Int = moves
    var Q: [(Int,Int)] = []
    Q.append((startX,startY))
    
    while !Q.isEmpty {
        if m == 0 { break }
        var currSize : Int = Q.count
        while currSize > 0 {
            let curr = Q.removeFirst()
            for i in 0..<8 {
                let newX = curr.0 + xd[i],
                    newY = curr.1 + yd[i]
                if(valid(x: newX, y: newY, board: &chessBoard)){
                    chessBoard[newX][newY]=1
                    Q.append((newX,newY))
                }
            }
            currSize = currSize - 1
        }
        currSize = Q.count
        m = m - 1
    }
    //displayBoard(board: &chessBoard)
    //print("Unreached positions in \(moves) moves: ")
    fillReached(board: &chessBoard, unreached: &res)
    return res
}

func fillReached(board: inout [[Int]], unreached: inout [String]) ->Void{
    for i in 0..<board.count{
        for j in 0..<board.count {
            if board[7-i][j] == 1 {
                var char = ""
                char.append(Character(UnicodeScalar(j + 1 + 96)!)) //64
                //print(char+"\(i + 1)")
                unreached.append(char+"\(i + 1)")
            }
        }
    }
}

func displayBoard(board: inout [[Int]]) -> Void{
    print()
    for i in 0..<board.count{
        print(8 - i,terminator:"  ")
        for j in 0..<board[i].count {
            print(board[i][j],terminator:"")
        }
        print()
    }
    print("   abcdefgh\n")
}

//print("Input valid starting positions (example: \"a1\"): ", terminator: "")
//let input = readLine()!

//print("Input moves count: ", terminator: "")
//let moves = Int(readLine()!)!

//print(traverce(start: input,moves: moves))
