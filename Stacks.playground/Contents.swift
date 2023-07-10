import UIKit

struct Stack<T>{
    private var items: [T] = []
    
    
    func peek() -> T?{
        return items.first
    }
    
    mutating func push(_ element: T){
        items.insert(element, at: 0)
    }
    
    mutating func pop() -> T?{
        if peek() == nil { return nil }
        return items.removeFirst()
    }
}



var stackString = Stack<String>()
stackString.push("First")
stackString.push("Second")
stackString.push("Third")
stackString.pop()
stackString.peek()
print(stackString)
