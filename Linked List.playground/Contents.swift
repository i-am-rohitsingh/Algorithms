import UIKit

class Node<T> {

    var value: T
    var next: Node<T>?

    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
}

struct LinkedList<T>{
    var head: Node<T>?
    var tail: Node<T>?
        
    var isEmpty: Bool{
        head == nil
    }
    
    init(){
        
    }
    
    
    mutating func push(_ value: T){
        let newNode = Node(value: value, next: head)
        head = newNode
        if tail == nil{
            tail = head
        }
    }
    
    mutating func append(_ value: T){
        let newNode = Node(value: value)
        tail?.next = newNode
        tail = newNode
    }
    
    func node(at index: Int) -> Node<T>?{
        var currentIndex = 0
        var currentNode = head
        
        while currentIndex < index && currentNode != nil{
            currentNode = currentNode?.next
            currentIndex += index
        }
        
        return currentNode
    }
    
    func insert(after index: Int, _ value: T){
        guard let node = node(at: index) else { return }
        node.next = Node(value: value, next: node.next)
    }
    
    mutating func pop() -> T?{
        defer{
            head = head?.next
            if isEmpty{
                tail = nil
            }
        }
        return head?.value
    }
    
    mutating func removeLast() -> T?{
        guard let head = head else { return nil }
        
        var previousNode = head
        var currentNode = head
        
        while let next = currentNode.next{
            previousNode = currentNode
            currentNode = next
        }
        
        previousNode.next = nil
        tail = previousNode
        
        return currentNode.value
    }
    
    mutating func remove(after index: Int) -> T?{
        guard let node = node(at: index) else { return nil }
        
        defer{
            if node.next === tail{
                tail = node
            }else{
                node.next = node.next?.next
            }
        }
        return node.next?.value
    }
    
    func printList(){
        var currentNode = head
        while currentNode != nil{
            print(currentNode!.value)
            currentNode = currentNode?.next
        }
    }
    
    func reverseList() -> Node<T>? {
        
        var prevNode: Node<T>? = nil // Mark 1
        var headNode = head // Mark 1
        
        while(headNode != nil) { // Mark 2
            let nextHead = headNode?.next // Mark 3
            headNode?.next = prevNode // Mark 4
            prevNode = headNode! // Mark 5
            headNode = nextHead // Mark 6
        }
        
        return prevNode //Mark 7
    }
    
}


var list = LinkedList<Int>()
list.push(1)
list.push(3)
list.push(4)
list.push(5)

list.printList()
print("Reversing")

//print("\n appending")
//list.append(5)
//list.append(2)
//list.printList()
//
//print("\n inserting")
//list.insert(after: 1, 15)
//list.printList()
//
//print("\n poping")
//list.pop()
//list.printList()
//
//print("\n removing last")
//list.removeLast()
//list.printList()
//
//print("\n removing after")
//list.remove(after: 0)
//list.printList()
//
//print("\n last")
//list.pop()
//list.pop()
//list.printList()

list.reverseList()
list.printList()
