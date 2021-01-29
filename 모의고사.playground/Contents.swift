import UIKit

/*
 수포자는 수학을 포기한 사람의 준말입니다. 수포자 삼인방은 모의고사에 수학 문제를 전부 찍으려 합니다. 수포자는 1번 문제부터 마지막 문제까지 다음과 같이 찍습니다.

 1번 수포자가 찍는 방식: 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...
 2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5, 2, 1, 2, 3, 2, 4, 2, 5, ...
 3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, ...

 1번 문제부터 마지막 문제까지의 정답이 순서대로 들은 배열 answers가 주어졌을 때, 가장 많은 문제를 맞힌 사람이 누구인지 배열에 담아 return 하도록 solution 함수를 작성해주세요.
 */

func solution(_ answers:[Int]) -> [Int] {
    let answerCount = answers.count
    let one: [Int] = getOne(answerCount: answerCount)
    let two: [Int] = getTwo(answerCount: answerCount)
    let three: [Int] = getThree(answerCount: answerCount)
    
    var count = 0
    var oneCount = 0
    var twoCount = 0
    var threeCount = 0
    
    for i in answers {
        if i == one[count] { oneCount += 1 }
        if i == two[count] { twoCount += 1 }
        if i == three[count] { threeCount += 1 }
        count += 1
    }
    
    var temp = [oneCount, twoCount, threeCount]
    temp.sort()
    var result: [Int] = []
    let item = temp[2]
    
    if oneCount == item {
        result.append(1)
    }
    if twoCount == item {
        result.append(2)
    }
    if threeCount == item {
        result.append(3)
    }
    
    return result
}

func getOne(answerCount count: Int) -> [Int] {
    var array: [Int] = []
    for i in 1...count {
        var item = i % 5
        item = item == 0 ? 5 : item
        array.append(item)
    }
    return array
}

func getTwo(answerCount count: Int) -> [Int] {
    var array: [Int] = []
    var tempCount: Int = 1
    
    for i in 1...count {
        if i % 2 == 1 {
            array.append(2)
        }
        else {
            if tempCount == 6 { tempCount = 1 }
            if tempCount == 2 { tempCount += 1 }
            array.append(tempCount)
            tempCount += 1
        }
    }
    
    return array
}

func getThree(answerCount count: Int) -> [Int] {
    var array: [Int] = []
    let rule = [3,1,2,4,5]
    var tempCount = 0
    
    for i in 1...count {
        if i % 2 == 1 && i != 1 {
            tempCount += 1
            if tempCount == 5 { tempCount = 0 }
        }
        array.append(rule[tempCount])
    }
    
    return array
}

solution([1,3,2,4,2])


