import UIKit

func checkPlaindrom(_ str: [Character]) -> Bool{
    for i in 0..<str.count/2{
        if str[i] != str[str.count - i - 1]{
            return false
        }
    }
    return true
}


print(checkPlaindrom(["M","O","M"]))

func checkPalindrom(_ str: String) -> Bool{
    var reverseStr = ""
    for chr in str{
        reverseStr = "\(chr)" + reverseStr
    }
    
    return reverseStr == str ? true : false
}

print(checkPalindrom("rohit"))
