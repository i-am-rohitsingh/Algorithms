import UIKit

func factorial(of num: Int) -> Int{
    if num == 0{
        return 1
    }
    return num * factorial(of: num - 1)
}

print(factorial(of: 4))
