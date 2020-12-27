import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    var num = n
    
    while num >= 1 {
        let result = num % 10
        answer += result
        num /= 10
    }
    
    return answer
}

solution(123)
