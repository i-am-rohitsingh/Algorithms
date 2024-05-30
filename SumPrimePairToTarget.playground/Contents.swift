
class Solution {
  static func special_pairs(_ n: Int) -> [[Int]] {
    // write your solution here
    var res:[[Int]] = []
    for i in 1...n where (n - i >= i) && is_Prime(num: i) && is_Prime(num: n - i){
        res.append([i, n - i])
    }
    return res
  }
  
  // A function that checks a number is prime or not
  static func is_Prime(num: Int) -> Bool {
    if num <= 1 {
        return false // Negatives, 0 and 1 as non-prime
    }
    if num <= 3{
        return true // 2 and 3 are prime
    }
    // Iterating through 2 to that half of number to check if number is perfect divisible or not
    var i = 2
    while i*i <= num {
        if num % i == 0 {
            return false
        }
        i = i + 1
    }
    return true
  }
}

print(Solution.special_pairs(19))
