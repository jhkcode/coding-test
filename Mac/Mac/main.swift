//
//  main.swift
//  Mac
//
//  Created by Jinhong Kim on 18/07/2017.
//  Copyright © 2017 test. All rights reserved.
//

import Foundation

class TimerTest {
    var timer: Timer?
    
    init() {
       self.timer = Timer(timeInterval: 1, target: self, selector: #selector(hello(_:)), userInfo: nil, repeats: true)
    }
    
    @objc
    func hello(_: Timer) {
        
    }
}


let dgroup = DispatchGroup()

for _ in 1...10 {
    DispatchQueue.global().async {
        dgroup.enter()
        
        print("hello from global sync")
        
        dgroup.leave()
    }
}

dgroup.wait()

print("wait ended")


let workItem = DispatchWorkItem() {
    print("hello this is work item")
}

for _ in 1...5 {
//    DispatchQueue.global().async(execute: workItem)
    DispatchQueue.global().async(group: dgroup, execute: workItem)
}

dgroup.wait()

print("wait ended2")

//var nums = [0, 8]
//moveZerosWithOrder(&nums)
//print(nums)




/*
let n1 = TreeNode(1)
let n2 = TreeNode(2)
let n3 = TreeNode(3)
let n4 = TreeNode(4)
let n5 = TreeNode(5)
let n6 = TreeNode(6)
let n7 = TreeNode(7)
let n8 = TreeNode(8)
let n9 = TreeNode(9)
let n10 = TreeNode(10)

//n2.left = n1
//n2.right = n3
//n4.left = n2
//
//n6.left = n5
//n6.right = n7
//n4.right = n6

n4.left = n3
n3.left = n2
n2.left = n1

if let node = dfs(n4, order:3) {
    print("found node: \(node.value)")
} else {
    print("not found")
}
*/


//let nums: [Int] = [7, 9, 1, 3, 4, 5]
//let nums: [Int] = [7, 9, 12, 1, 3, 4, 5]
//let nums: [Int] = [7, 9]
//let nums: [Int] = [9, 1]
//let nums: [Int] = [1, 3, 4, 5, 7, 9]
//let nums: [Int] = [100, 99, 22, 10, 7, 9, 1]
//let nums: [Int] = [3, 1, 2]
//print(findMinIndex(nums, start: 0, end: nums.count - 1))
//print(nums.sorted(

//print(abs(10 - 20))


/*
//Given [1,3],[2,6],[8,10],[15,18],
//return [1,6],[8,10],[15,18].

//print(merge([Interval(1, 3), Interval(2, 6), Interval(8, 10), Interval(15, 18)]))
*/




//print(groupAnagrams2(["eat", "tea", "tan", "ate", "nat", "bat"]))

/*
//let grid = [[1, 0, 1], [0, 1, 1]]
//let grid = [[1,1,1,1,0],
//            [1,1,0,1,0],
//            [1,1,0,0,0],
//            [0,0,0,0,0]]

let grid = [[1,1,0,0,0],
            [1,1,0,0,0],
            [0,0,1,0,0],
            [0,0,0,1,1]]

print(numIslands(grid))
*/



/*
print(myPow(1.00001, 123456))
*/
 
 
//print(productExceptSelf([1, 2, 3, 4]))

/*
print(convertToTitle(10))
print(convertToTitle(26))
print(convertToTitle(27))
print(convertToTitle(28))
print(convertToTitle(52))
print(convertToTitle(53))



print(convertToTitle2(10))
print(convertToTitle2(26))
print(convertToTitle2(27))
print(convertToTitle2(28))
print(convertToTitle2(52))
print(convertToTitle2(53))
*/



/*
class Node {
    var val: Int
    var next: Node? = nil
    
    init(_ value: Int) {
        self.val = value
        self.next = nil
    }
    
}


func reverse(_ head: Node?) -> Node? {
    var root: Node? = nil
    var node: Node? = head
    
    while let curNode = node {
        node = curNode.next
        curNode.next = root
        root = curNode
    }
    
    return root
}


func printNode(_ node: Node?) {
    var tmpNode = node
    
    while let curNode = tmpNode {
        print("node: \(curNode.val)")
        tmpNode = curNode.next
    }
}


let n1 = Node(1)
let n2 = Node(2)
let n3 = Node(3)
let n4 = Node(4)
let n5 = Node(5)

n1.next = n2
//n2.next = n3
//n3.next = n4
//n4.next = n5

printNode(reverse(nil))
*/




/*
let str = "Hello"

let c = str.filter { $0 == "l" }.count
print(c)

let nums = [12, 34, 56]

let hex = nums
            .map {
                String(format: "%02x", $0)
            }
            .reduce("0x") {
                $0 + $1
            }

print(hex)
*/

/*
extension Sequence where Iterator.Element : CustomStringConvertible {
    
    func joined2(separator: String) -> String {
        return self.reduce("") {
                if $0.isEmpty {
                    return String(describing: $1)
                }
            
                return $0 + separator + String(describing: $1)
            }
    }
}

print(nums.joined2(separator: ","))


extension Array {
    
    func joined3(separator: String) -> String {
        return self.reduce("") {
            if $0.isEmpty {
                return String(describing: $1)
            }
            
            return $0 + separator + String(describing: $1)
        }
    }
}

print(nums.joined3(separator: "-"))
*/


/*
let src = [[[1, 2], [10, 20]], [3, 4], [5, 6]]
let fsrc = src.flatMap { $0 }

print(fsrc)
*/


/*
let nums: [Int] = [1, 2, 3]
let chars: [Character] = ["a", "b", "c", "d", "e"]
let zipped = zip(nums, chars)

print(zipped.underestimatedCount)

for (num, char) in zipped {
    print(zipped.underestimatedCount)
    print("num: \(num), char: \(char)")
}
 */



/*
struct Hello: CustomStringConvertible {
    var word: String = ""
    
    public var description: String {
        return self.word
    }

    init(_ word: String) {
        self.word = word
    }
}

var array: [Hello] = [Hello("a"), Hello("b"), Hello("c")]
var dict: [String : Hello] = ["1" : Hello("1"), "2" : Hello("2"), "3" : Hello("3")]

//array[0].word = "Z"
//var first = array[0]
//first.word = "z"

//print(array)

dict["1"]?.word += "zz"
//var one = dict["1"]
//one?.word = "fff"
print(dict)
*/


/*
public class Interval {
    public var start: Int
    public var end: Int
    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
    
    public var description: String {
        return "\(start) - \(end)"
    }
}

let a = Interval(1, 4)
let b = Interval(5, 9)
let c = Interval(10, 19)
let d = Interval(18, 26)

var intervals = [c, a, d, b]
intervals.sort { $0.start < $1.start }
intervals.forEach { print($0.description) }

for idx in 1 ..< intervals.count {
    if intervals[idx].start < intervals[idx - 1].end {
        print("noway")
        break
    }
}

print("good")
*/




/*
func sum(_ a: Int, _ b: Int, _ addition: inout Int) -> Int {
    let sum: Int = a + b + addition
    
    addition = sum / 2
    
    return sum % 2
}

func addBinary(_ a: String, _ b: String) -> String {
    let aBinary: [Int] = a.characters.map { Int(String($0)) ?? 0 }
    let bBinary: [Int] = b.characters.map { Int(String($0)) ?? 0 }
    
    var aIdx: Int = aBinary.count - 1
    var bIdx: Int = bBinary.count - 1
    var addition: Int = 0
    var binary: [String] = []
    
    while aIdx >= 0 || bIdx >= 0 {
        let aDigit = (aIdx >= 0) ? aBinary[aIdx] : 0
        let bDigit = (bIdx >= 0) ? bBinary[bIdx] : 0
        let result = String(sum(aDigit, bDigit, &addition))
        
        binary.insert(result, at:0)
        
        aIdx -= 1
        bIdx -= 1
    }
    
    if addition > 0 {
        binary.insert("1", at: 0)
    }
    
    return binary.joined()
}
*/


/*

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
 
    public init(_ val: Int) {
         self.val = val
         self.left = nil
         self.right = nil
    }
    
    public init(_ val: Int, left: TreeNode?, right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


class Solution {
    var leftDepth: [Int: Int] = [:]
    var rightDepth: [Int: Int] = [:]
    var maxDiameter: Int = 0
    
    func dfs(_ node: TreeNode?) -> Int {
        guard let treeNode = node else {
            return 0
        }
        
        let leftDepth = dfs(treeNode.left)
        let rightDepth = dfs(treeNode.right)
        
        self.leftDepth[treeNode.val] = leftDepth
        self.rightDepth[treeNode.val] = rightDepth
        
        maxDiameter = max(maxDiameter, leftDepth + rightDepth)
        
        return max(leftDepth, rightDepth) + 1
    }
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        
        // depth
        let depth = dfs(root)
        
        print("tree depth: \(depth), max diameter: \(self.maxDiameter)")
        
        return 0
    }
}


let t5 = TreeNode(5)
let t4 = TreeNode(4)
let t3 = TreeNode(3, left: nil, right: t4)
let t2 = TreeNode(2, left:t4, right: t5)
let t1 = TreeNode(1, left: t2, right: t5)

let s = Solution()
print(s.diameterOfBinaryTree(t1))
*/


/*
class TNode {
    let value: Int
    var left: TNode?
    var right: TNode?
    
    init(_ val: Int, left: TNode? = nil, right: TNode? = nil) {
        self.value = val
        self.left = left
        self.right = right
    }
    
}


//func dfs(_ node: TNode?, path: inout [Int]) {
//    guard let treeNode = node else {
//        return
//    }
//    
//    path.append(treeNode.value)
//    
//    if treeNode.left == nil && treeNode.right == nil {
//        print("path: \(path.map { String($0) }.joined(separator: "->"))")
//        path.removeLast()
//        return
//    }
//    
//    dfs(treeNode.left, path: &path)
//    dfs(treeNode.right, path: &path)
//    
//    path.removeLast()
//}
//
//func binaryTreePaths(_ root: TNode?) -> [String] {
//    var path: [Int] = []
//    
//    dfs(root, path: &path)
//    
//    return []//path.joined(separator: "->")
//}


func dfs(_ node: TNode?, path: [Int]) {
    guard let treeNode = node else {
        return
    }
    
    let newPath: [Int] = path + [treeNode.value]
    
    if treeNode.left == nil && treeNode.right == nil {
        print("path: \(newPath.map { String($0) }.joined(separator: "->"))")
        return
    }
    
    dfs(treeNode.left, path: newPath)
    dfs(treeNode.right, path: newPath)
}

func binaryTreePaths(_ root: TNode?) -> [String] {
    let path: [Int] = []
    
    dfs(root, path: path)
    
    return []//path.joined(separator: "->")
}

let t5 = TNode(5)
let t4 = TNode(4)
let t3 = TNode(3)
let t2 = TNode(2, left:t4, right: t5)
let t1 = TNode(1, left: t2, right: t5)

print(binaryTreePaths(t1))
*/


/*
func moveZeroes(_ nums: inout [Int]) {
    var loopIdx: Int = 0
    var zeroCount: Int = 0
 
    while loopIdx < nums.count - zeroCount {
        if nums[loopIdx] == 0 {
            nums.remove(at: loopIdx)
            nums.append(0)
            
            zeroCount += 1
        } else {
            loopIdx += 1
        }
    }
}


func moveZeroes2(_ nums: inout [Int]) {
    var zeroIdx: Int = 0
    var loopIdx: Int = 0
    
    while zeroIdx < nums.count {
        if nums[zeroIdx] == 0 {
            break
        }
        
        zeroIdx += 1
    }
    
    loopIdx = zeroIdx + 1
    
    while loopIdx < nums.count {
        if nums[loopIdx] != 0 {
            nums[zeroIdx] = nums[loopIdx]
            nums[loopIdx] = 0
            
            zeroIdx += 1
        }
        
        loopIdx += 1
    }
}


func moveZeroes3(_ nums: inout [Int]) {
    var zeroIdx: Int = -1
    var loopIdx: Int = 0
    
    while loopIdx < nums.count {
        if nums[loopIdx] != 0 {
            if zeroIdx >= 0 {
                nums[zeroIdx] = nums[loopIdx]
                nums[loopIdx] = 0
                
                zeroIdx += 1
            }
        } else if zeroIdx < 0 {
            zeroIdx = loopIdx
        }
        
        loopIdx += 1
    }
}


func moveZeroes4(_ nums: inout [Int]) {
    var zeroIdx: Int = 0
    var loopIdx: Int = 0
    
    while loopIdx < nums.count {
        if nums[loopIdx] != 0 && loopIdx != zeroIdx {
            nums[zeroIdx] = nums[loopIdx]
            nums[loopIdx] = 0
            
            zeroIdx += 1
        }
        
        loopIdx += 1
    }
}


var nums: [Int] = [18,0,9,1]
moveZeroes4(&nums)

print("zero moved: \(nums)")
*/



/*
class some: Hashable {
    var hashValue: Int = 0
    
    public static func ==(lhs: some, rhs: some) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}


class View: Hashable {
    var hashValue: Int {
        return value
    }

    var superView: View?
    var value: Int
    
    init(_ val: Int, superView: View? = nil) {
        self.value = val
        self.superView = superView
    }
    
    
    public static func ==(lhs: View, rhs: View) -> Bool {
        return lhs.value == rhs.value
    }
    
    public func debugDescription() -> String {
        return "view value: \(self.value)"
    }
}


func hasSameSuperView(_ viewA: View, _ viewB: View) -> View? {
    var aViews: Set<View> = Set<View>()
    var view: View? = viewA
    
    // make aview's superview array
    while view != nil {
        if let superView = view!.superView {
            aViews.insert(superView)
        }
        
        view = view!.superView
    }

    
    // make bview's superview array
    view = viewB
    while view != nil {
        if let superView = view!.superView, aViews.contains(superView) {
            return superView
        }
        
        view = view!.superView
    }

    return nil
}

let v1 = View(1)
let v2 = View(2, superView: v1)
let v3 = View(3, superView: v2)
let v4 = View(4, superView: v2)
let v5 = View(5, superView: v4)

let v11 = View(11, superView: v2)
let v12 = View(12, superView: v11)
let v13 = View(13, superView: v4)

let v00 = View(0)
let v100 = View(100, superView: v00)
let v101 = View(101, superView: v100)

if let parent = hasSameSuperView(v12, v00) {
    print("parent: \(parent.value)")
} else {
    print("parent none")
}
*/


/*
class TNode {
    let value: Int
    var left: TNode?
    var right: TNode?
    
    init(_ val: Int, left: TNode? = nil, right: TNode? = nil) {
        self.value = val
        self.left = left
        self.right = right
    }
    
}



// MARK: BT -> [Int]

func dfs(_ node: TNode?, array: inout [Int]) {
    guard let tnode = node else {
        return
    }
    
    dfs(tnode.left, array: &array)
    
    array.append(tnode.value)
    
    dfs(tnode.right, array: &array)
}


func toArray(_ root: TNode) -> [Int] {
    var array: [Int] = []
    
    dfs(root, array: &array)
    
    return array
}

let t5 = TNode(5)
let t4 = TNode(4)
let t3 = TNode(3)
let t2 = TNode(2, left:t4, right: t5)
let t1 = TNode(1, left: nil, right: t5)
//let t1 = TNode(1, left: t2, right: t3)

//print("array: \(toArray(t1))")


// MARK: [Int] -> BT

func toBT(_ numbers: [Int]) -> TNode? {
    if numbers.count == 0 {
        return nil
    }
    
    let centerIndex = numbers.count / 2
    let node = TNode(numbers[centerIndex])
    
    node.left = toBT(Array(numbers.prefix(upTo: centerIndex)))
    node.right = toBT(Array(numbers.suffix(from: centerIndex + 1)))
    
    return node
}

let numbers = [1, 2, 3]
if let root = toBT(numbers) {
    print("to array: \(toArray(root))")
} else {
    print("bt is nil")
}

//let prefix = numbers.prefix(upTo: 4)
//print(prefix)
*/

/*
// MARK: Stock Price


func bestProfit(_ prices: [Int]) -> Int {
    var minPrice: Int = Int.max
    var maxProfit: Int = 0
    
    for price in prices {
        let curProfit = price - minPrice
        
        maxProfit = max(maxProfit, curProfit)
        
        minPrice = min(minPrice, price)
    }
    
    return profit
}

let prices: [Int] = [10]
print("max profit: \(bestProfit(prices))")


// MARK: Linked List

class LLNode {
    
    var next: LLNode?
    var value: Int = 0
    
    init(value: Int = 0, next: LLNode? = nil) {
        self.value = value
        self.next = next
    }
    
}


func swapLL(_ head: LLNode) -> LLNode {
    var headNode: LLNode = head
    var prevNode: LLNode? = nil
    var curNode: LLNode? = nil
    var nextNode: LLNode?  = nil

    if head.next == nil {
        return headNode
    }
    
    curNode = headNode
    
    while curNode != nil {
        nextNode = curNode!.next
        
        if nextNode == nil {
            return headNode
        }
        
        if prevNode != nil {
            prevNode!.next = nextNode
        } else {
            headNode = nextNode!
        }
        
        curNode!.next = nextNode!.next
        nextNode!.next = curNode
        
        prevNode = curNode
        curNode = curNode!.next
    }
    
    return headNode
}

func printLLNode(_ head: LLNode) -> String {
    var node: LLNode? = head
    var str = ""
    
    while node != nil {
        str.append("\(node!.value) -> ")
        node = node!.next
    }
    
    return str
}

var n5 = LLNode(value: 5, next: nil)
var n4 = LLNode(value: 4, next: n5)
var n3 = LLNode(value: 3, next: n4)
var n2 = LLNode(value: 2, next: n3)
var n1 = LLNode(value: 1, next: n2)

print("n1: \(printLLNode(n1))")
print("swap: \(printLLNode(swapLL(n1)))")



// MARK: Palindrome

func isPalindrome(_ str: String) -> Bool {
    let characters: [Character] = Array(str.characters)
    var leftIndex: Int = 0
    var rightIndex: Int = str.characters.count - 1
    
    while leftIndex < rightIndex {
        if characters[leftIndex] != characters[rightIndex] {
            return false
        }
        
        leftIndex += 1
        rightIndex -= 1
    }
    
    return true
}

print("is palindrome: \(isPalindrome("madda"))\n")


// MARK: Add Binary


func plus(_ b1: Int, _ b2: Int, _ addition: inout Int) -> Int {
    let sum = b1 + b2 + addition
    
    addition = sum >= 2 ? 1 : 0
    
    return sum % 2
}


func addTwoBinary(_ b1: [Int], _ b2: [Int]) -> [Int] {
    var sum: [Int] = []
    var addition: Int = 0
    var b1Index = b1.count - 1
    var b2Index = b2.count - 1
    
    while b1Index >= 0 || b2Index >= 0 {
        let num1 = (b1Index >= 0) ? b1[b1Index] : 0
        let num2 = (b2Index >= 0) ? b2[b2Index] : 0
        let result = plus(num1, num2, &addition)
        
        sum.insert(result, at: 0)
        
        b1Index -= 1
        b2Index -= 1
    }
    
    if addition > 0 {
        sum.insert(1, at: 0)
    }
    
    return sum
}

let b1 = [1,0,0,1]
let b2 = [1,1,1]

print("binary sum: \(addTwoBinary(b1, b2))")



// MARK: Dispatch

let dispatchGroup = DispatchGroup()

dispatchGroup.enter()
DispatchQueue.global().async {
    print("hello in global queue")
    dispatchGroup.leave()
}


dispatchGroup.enter()
DispatchQueue.global().async {
    print("hello from other thread")
    dispatchGroup.leave()
}


let workItem = DispatchWorkItem {
    print("this is dispatch work item")
//    dispatchGroup.leave()
}
//dispatchGroup.enter()
DispatchQueue.global().async(group: dispatchGroup, execute: workItem)
//DispatchQueue.global().async(execute: workItem)
workItem.cancel()


dispatchGroup.enter()
DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
    print("dispatch async after")
    dispatchGroup.leave()
}


dispatchGroup.wait()


// MARK: Phone Letters


func combine(_ arrOne: [String], _ arrTwo: [String]) -> [String] {
    var combined: [String] = []
    
    if arrOne.isEmpty {
        return arrTwo
    }
    
    if arrTwo.isEmpty {
        return arrOne
    }
    
    for one in arrOne {
        for two in arrTwo {
            combined.append(one + two)
        }
    }
    
    return combined
}


func letters(of numbers: String) -> [String] {
    let numLetters: [String : [String]] = ["0" : ["-"],
                                           "1" : ["0"],
                                           "2" : ["a", "b", "c"],
                                           "3" : ["d", "e", "f"],
                                           "4" : ["g", "h", "i"],
                                           "5" : ["j", "k", "l"],
                                           "6" : ["m", "n", "o"],
                                           "7" : ["p", "q", "r", "s"],
                                           "8" : ["t", "u", "v"],
                                           "9" : ["x", "w", "y", "z"]]
    var letters: [String] = []
    
    // loop numbers
    for number in numbers.characters {
        if let chars = numLetters[String(number)] {
            letters = combine(letters, chars)
        }
    }
    
    return letters
}


print(letters(of: "987"))
*/
