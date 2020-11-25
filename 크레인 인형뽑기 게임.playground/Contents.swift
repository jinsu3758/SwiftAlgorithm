

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var stack: [Int] = []
    var count: Int = 0
    var tempBoard = board
    
    moves.forEach { move in
        var pickItem: Int = -1
//        guard move <= board.count else { return }
        for (index, array) in tempBoard.enumerated() {
            guard array[move - 1] != 0 else { continue }
            pickItem = array[move - 1]
            tempBoard[index][move - 1] = 0
            break
        }
        
        guard pickItem != -1 else { return }
        guard let popItem = stack.last else { stack.append(pickItem); return }
        
        if popItem == pickItem {
            stack.popLast()
            count += 2
        }
        else {
            stack.append(pickItem)
        }
    }
    
    return count
}

let board = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
let moves = [1,5,3,5,1,2,1,4]

solution(board, moves)
