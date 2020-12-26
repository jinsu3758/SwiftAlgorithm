import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var result = 0
    var cnt = 0
    var isBool = true

    for item in skill_trees {
        isBool = true
        cnt = 0

        for i in item {
            let indexOf = skill.firstIndex(of: i)
            if let index = indexOf {
                let distance = skill.distance(from: skill.startIndex, to: index)
                if cnt != distance {
                    isBool = false
                    break
                }
                else {
                    cnt += 1
                }
            }
        }

        if isBool {
            result += 1
        }

    }

    return result

}



solution("CBD", ["BACDE", "CBADF", "AECB", "BDA", "AAACAAA"])
