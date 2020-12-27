import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for item in commands {
        let start = item[0] - 1
        let end = item[1] - 1
        
        let temp = array[start...end].sorted()
        result.append(temp[item[2] - 1])
    }
    
    return result
}

solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])
