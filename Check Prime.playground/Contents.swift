import UIKit

var greeting = "Hello, playground"

func checkPrime(number: Int) -> Bool{
    var isPrime: Bool = false
    if number > 1{
        if number == 2 && number == 3{
            isPrime =  true
        }else{
            for i in 2..<number{
                isPrime = number % i == 0 ? false : true
                if !isPrime{
                    break
                }
            }
        }
    }
    return isPrime
}

checkPrime(number: 17)

var inputNumber: [Int] = [1,2,3,5,6,4,7,8,9,10]
var primeNumbers: [Int] = []

for i in 0..<inputNumber.count{
    if checkPrime(number: i){
        primeNumbers.append(i)
    }
}

print(primeNumbers)
