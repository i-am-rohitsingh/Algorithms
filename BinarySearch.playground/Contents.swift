import UIKit

func binarySearch<T: Comparable>(for element: T, in array: [T]) -> Int?{
    var lowerBound = 0
    var upperBound = array.count - 1
    
    while (true) {
        var currentIndex = (lowerBound + upperBound)/2
        if array[currentIndex] == element{
            return currentIndex
        }
        else if lowerBound > upperBound{
            return nil
        }
        else{
            if array[currentIndex] > element{
                upperBound = currentIndex - 1
            }else{
                lowerBound = currentIndex + 1
            }
        }
    }
}

var index = binarySearch(for: 11, in: [1,2,3,4,5,6,7,8,9,10])
if let index = index{
    print("found at index \(index)")
}else{
    print("Element not found")
}
