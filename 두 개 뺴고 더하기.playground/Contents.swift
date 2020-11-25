import UIKit

func solution(_ numbers:[Int]) -> [Int] {
    var count = 0
    var tempSet = Set<Int>()
    numbers.forEach { num in
        count += 1
        for i in count..<numbers.count {
            tempSet.insert(num + numbers[i])
        }
    }
    
    return Array(tempSet).sorted()
}

let array = [5,0,2,7]
solution(array)
