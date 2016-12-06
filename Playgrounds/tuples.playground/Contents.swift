//: Playground - noun: a place where people can play

import UIKit

var t1 = (1,"e")
let t1r1 = t1.0
let t1r2 = t1.1

t1.1 = "edited"
_ = t1.1 //Just to dispay in playground preview panel, set to empty variable ( _ ) to prevent warning

var t2 : (Int, String, (Int, Bool)) = (1, "t", (4, false))