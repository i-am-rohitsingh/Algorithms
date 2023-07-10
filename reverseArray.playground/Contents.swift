import UIKit

func reverse<T>(array :[T]) -> [T]{
    var result = array
    for i in 0..<array.count/2{
        (result[i], result[result.count - i - 1]) = (result[result.count - i - 1], result[i])
    }
    return result
}

print(reverse(array: [1,2,3,4]))
print(String(reverse(array: ["r","o","h","i","t"])))
