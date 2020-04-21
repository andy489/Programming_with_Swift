// github.com/andy489

import Foundation

let nk = readLine()!
        .components(separatedBy:" ")
        .map{Int($0)!}
let problemsPerPage = nk[1]

let problems = readLine()!.components(separatedBy:" ").map{Int($0)!}

var specialCount = 0
var currentPage = 0

for chapter in 0..<problems.count {
    currentPage += 1
    var chapterPage = 1
    for problem in 1...problems[chapter] {
        if problem > (chapterPage * problemsPerPage) {
            currentPage += 1
            chapterPage += 1
        }
        if problem == currentPage {
            specialCount += 1
        }
    }
}

print("\(specialCount)")
