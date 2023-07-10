import UIKit

/*
 Print array after it is right rotated K times
 
 Input: Array[] = {1, 3, 5, 7, 9}, K = 2.
 Output: 7 9 1 3 5
 Explanation:
 After 1st rotation - {9, 1, 3, 5, 7}
 After 2nd rotation - {7, 9, 1, 3, 5}
 
 Input: Array[] = {1, 2, 3, 4, 5}, K = 4.
 Output: 2 3 4 5 1
 */

/*
 Just by array slicing
 fails sometime
 a = [1,2,3,4]
 k = 2
 
 and
 a = [1,2,3,4,5,6,7]
 k = 3
 
 gives different results
 */

func rotateArr(_ arr: inout [Int], times: Int){
    let k = times % arr.count
//    let part1 = Array(arr[0..<k+1])
//    let part2 = Array(arr[k+1..<(arr.count)])
//    arr = part2+part1
    arr = Array(arr[k..<(arr.count)]) + Array(arr[0..<k])
    print(arr)
}

//By inserting the element at first and then removing it from last
func rotateArray(_ arr: inout [Int], times: Int){
    let k = times % arr.count
    var count = 0
    while count < k{
        arr.insert(arr[arr.count - 1], at: 0)
        arr.remove(at: arr.count - 1)
        count += 1
    }
    print(arr)
}

/*
 By rotating the array
 Make sure k is in range
 Reverse the whole array
 Reverse the first k elements
 Reveres the rest of the elements
 */

func rotate(_ nums: inout [Int], _ k: Int) {
    var k = k % nums.count
    
    reverse(&nums, 0, nums.count - 1)
    print(nums)
    reverse(&nums, 0, k - 1)
    print(nums)
    reverse(&nums, k, nums.count - 1)
    print(nums)
}

//Helper func to reverse given range of an array
func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
    var L = start
    var R = end
    while(L < R) {
        nums.swapAt(L, R)
        L += 1
        R -= 1
    }
}

//
func rotateNew(_ nums: inout [Int], _ k: Int) {
    var newArray = nums
    var numNums = nums.count
    for i in (0...nums.count - 1) {
        print((i + k) % numNums)
        newArray[(i + k) % numNums] = nums[i]
        print(newArray)
    }
    nums = newArray
}

//var nums = [1,2,3,4,5,6,7]
//rotate(&nums, 3)
//var num = [1,2,3,4,5,6,7]
//rotateArray(&num, times: 3)
var n = [1,2,3,4,5,6,7]
rotateNew(&n, 3)
