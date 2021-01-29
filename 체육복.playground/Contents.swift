import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostCount = lost.count
    let reserveCount = reserve.count
    var set = Set<Int>()
    for item in lost {
        set.insert(item)
    }
    for item in reserve {
        set.insert(item)
    }
    let count = set.count
    
    let a = count - (lostCount + reserveCount) + lostCount
    
//    while count < arr.count - 1 {
//        if arr[count] + 1 == arr[count + 1] {
//            lostCount -= 1
//        }
//        if arr[count] == arr[count + 1] {
//            lostCount -= 1
//        }
//        count += 2
//    }
    
    return n - a
}

//solution(5,    [2, 4],    [1, 3, 5])
//solution(5, [2, 4], [3])
solution(3,    [3]    ,[1]) - 2
//solution(5, [1, 2, 3, 4], [1 ,3, 4]) - 4
//solution(4, [1,2], [1])
