//: Playground - noun: a place where people can play

import UIKit

class Class1 {}
class Class2 {}

var a : Any = Class1()

var casted1 : Class2? = a as? Class2 //Cast return nil because a is a Class1
var casted2 : Class1 = a as! Class1 //We know that a is Class1, force unwrapping optional
var casted3 : Class1? = a as? Class1 //If we don't sure if a is Class1, optional cast

var casted4 : Class2 = a as? Class2 ?? Class2() //If a isn't a Class 2 (cast return nil), new Class2 will be instancied