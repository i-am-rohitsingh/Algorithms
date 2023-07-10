import UIKit

var greeting = "Hello, playground"


func reverseString(input: String) -> String{
    var revStr = ""
    for char in input{
        revStr = "\(char)" +  revStr
    }
    return revStr
}

reverseString(input: greeting)
 
