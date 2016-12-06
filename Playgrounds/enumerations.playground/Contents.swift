//: Playground - noun: a place where people can play

import UIKit

enum Promo : String {
    case A_Sc_1 = "B1"
    case A_Sc_2 = "B2"
    case B_Sc = "B3"
    case M_Sc_1 = "M1"
    case M_Sc_2 = "M2"
}

enum Campus : String {
    case Nice, Marseille, Grenoble, Montpellier, Toulouse, Paris
}

enum School : Int {
    case Supinfo, Epitech, Epita
}

enum Country : Int {
    case France = 1
    case Belgique = 2
}


let promo1 = Promo.A_Sc_1
promo1.rawValue

let promo2 = Promo(rawValue: "B2")

Campus.Nice.rawValue
Campus(rawValue: "Toulouse")

School.Supinfo.rawValue
School(rawValue: 2)

Country.France.rawValue
Country(rawValue: 2)

var promo3 = Promo(rawValue: "B0")