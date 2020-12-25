import UIKit
import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var queue: [Int] = []
    var tempWeight = weight
    var count = 0
    
    for item in truck_weights {
        while(true) {
            if queue.count == bridge_length {
                let first = queue.removeFirst()
                tempWeight += first
                break
            }
            
            if queue.isEmpty {
                queue.append(item)
                count += 1
                tempWeight -= item
                break
            }
            else {
                if item > tempWeight{
                    count += 1
                    queue.append(0)
                }
                else {
                    queue.append(item)
                    tempWeight -= item
                    count += 1
                    break
                }
            }
        }
    }
    
    return count + bridge_length
}


solution(100, 100, [10, 10, 10, 10, 10, 10, 10, 10, 10, 10] )

// 2, 10, [7, 4, 5, 6]    8
// 100, 100, [10, 10, 10, 10, 10, 10, 10, 10, 10, 10]    101
// 100, 100, [10]   101
