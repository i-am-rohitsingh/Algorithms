import UIKit

func findSecondhighest(in arr: [Int]) -> Int{
    var highest = Int.min
    var secondHighest = Int.min
    
    for element in arr{
        if element > highest{
            secondHighest = highest
            highest = element
        }else if element > secondHighest && element != highest{
            secondHighest = element
        }
    }
    return secondHighest
}

print(findSecondhighest(in: [10,2,3,5,4,7,6,8,10,9]))
