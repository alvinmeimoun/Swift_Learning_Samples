//: Playground - noun: a place where people can play

import UIKit

//Methode 1
print("Méthode 1")
var closure = { (p1: Int, p2: Int) -> Bool in
    return p1 < p2
}
var sortedList : [Int] = [5,1,39,9,30].sorted(by: closure)
print(sortedList)

//Methode 2
print("Méthode 2")
var sortedList2 : [Int] = [5,1,39,9,30].sorted(by: {p1, p2 in p1 < p2})
print(sortedList2)

//Methode 3
print("Méthode 3")
var sortedList3 : [Int] = [5,1,39,9,30].sorted(by: {$0 < $1})
print(sortedList3)

//En paramètre de fonction
print("Méthode function")
func test(theClosure: (Int, Int) -> Bool){
    print([5,1,39,9,30].sorted(by: theClosure))
}
test(theClosure: {$0 < $1})


//En paramètre de fonction avec asynchrone
/*print("Méthode function async")
func testAsync(theClosure: (Int, Int) -> Bool, completionHandler: ([Int])){
    DispatchQueue.global().async(execute: {
        var sortedList = [5,1,39,9,30].sorted(by: theClosure)
        
        DispatchQueue.main.async(execute: {
            completionHandler(sortedList)
        })
    })
}
testAsync(theClosure: {$0 < $1}, completionHandler: result in {
    print(result)
})*/
