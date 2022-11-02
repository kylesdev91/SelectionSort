

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}

var passCount = 0
var swapCount = 0
var swaps = 0
var sortedIntegers = unsortedIntegers
var temp = 0
let i = 0
var j = 0
print("Pass: \(passCount), Swaps: \(swaps)/\(swapCount), Array: \(sortedIntegers)")
for i in 0 ..< sortedIntegers.count - 1 {
    passCount += 1
    swapCount += 1
    var less = i
    for j in i + 1 ..< sortedIntegers.count {
        if sortedIntegers[j] < sortedIntegers[less] {
            less = j
        }
    }
    if i != less {
        temp = sortedIntegers[i]
        sortedIntegers[i] = sortedIntegers[less]
        sortedIntegers[less] = temp

        swaps = 1
    }
    print("Pass: \(passCount), Swaps: 1/\(swapCount), Array: \(sortedIntegers)")
}
