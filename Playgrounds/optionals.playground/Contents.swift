//: Playground - noun: a place where people can play

import UIKit

var a : String?
a = nil
a = ""

var b : String = a! //At this point, if a is nil, program will crash

class Class1 {
    var ca = 5
}

var c1 : Class1? = nil
var c2 : Class1? = Class1()

var r1 = c1?.ca
var r2 = c1?.ca
var r3 = c2!.ca

var c : String = ""
//c = nil //this line will refuse to compile