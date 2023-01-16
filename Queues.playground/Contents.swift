import UIKit

struct Queue<T> {
    private var array: [T] = []
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var count: Int {
        return array.count
    }
    
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        return array.isEmpty ? nil : array.removeFirst()
    }
    
    func peek() -> T? {
        return array.first
    }
}

//Visualisation purposes only
extension Queue: CustomStringConvertible{
    var description: String {
        let topDevider = "-------Top-------\n"
        let bottomDevider = "\n-------Bottom-------"
        let stackElements =  array.map{"\($0)"}.reversed().joined(separator: "\n")
        return topDevider + stackElements + bottomDevider
    }
}

var queue = Queue<Int>()
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
print(queue)

queue.dequeue()
queue.dequeue()
queue.peek()

print(queue)
