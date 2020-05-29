// github.com/andy489

func valid(maze: inout [[String]], x: Int, y: Int) -> Bool {
    return x>=0 && x<maze.count && y>=0 && y<maze[0].count &&
        (maze[x][y] == "0" || maze[x][y] == "*");
}

let xd: [Int] = [0,0,1,-1] //x dimension move
let yd: [Int] = [1,-1,0,0] // y dimension move

func backtrack(maze: inout [[String]], x: Int, y: Int, cnt: inout Int) -> Void{
    if valid(maze: &maze, x: x, y: y) {
        if maze[x][y] == "*" {
            cnt = cnt + 1
            return
        }
        maze[x][y] = "1" //visit
        for i in 0..<xd.count{
            backtrack(maze: &maze, x: x + xd[i], y: y+yd[i], cnt: &cnt)
        }
        maze[x][y] = "0" //unvisit
    }
}

func findPaths(in: [[String]]) -> Int{
    var (startX,startY) = (0,0)
    
    let rows: Int = `in`.count
    if rows == 0 {return 0}
    let cols: Int = `in`[0].count
    
    outerLoop: for i in 0..<rows{
        for j in 0..<cols{
            if `in`[i][j] == "^"{
                (startX,startY) = (i,j)
                break outerLoop
            }
        }
    }
    
    var cnt: Int = 0
    
    var duplicate: [[String]] = Array(repeating: Array(repeating: "0", count: cols), count: rows)
    for i in 0..<rows{
        for j in 0..<cols{
            duplicate[i][j] = `in`[i][j]
        }
    }

    duplicate[startX][startY] = "0"
    backtrack(maze: &duplicate, x: startX, y: startY, cnt: &cnt)
    return cnt
}

var labyrinth: [[String]] = [["^", "0", "0"],
                             ["0", "0", "0"],
                             ["0", "1", "*"]]
 
//print(labyrinth)
//print(findPaths(in: labyrinth))
