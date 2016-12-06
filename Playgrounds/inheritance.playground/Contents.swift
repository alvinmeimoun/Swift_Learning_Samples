//: Playground - noun: a place where people can play

import UIKit

protocol Greetable {
    func sayGreeting() -> String
}

class Class2 {}
//test extension
extension Class2 : Greetable {
    func sayGreeting() -> String {
        return "test greetable"
    }
}

class Person : Greetable {
    
    //Stored property
    var firstname : String
    var lastname : String
    
    convenience init (firstname: String){
        self.init(firstname: firstname, lastname: "Inconnu")
    }
    
    init(firstname: String, lastname: String) {
        self.firstname = firstname
        self.lastname = lastname
    }
    
    //Computed property
    var description : String {
        get {
            return firstname + " " + lastname.uppercased()
        }
    }
    
    func sayGreeting() -> String {
        return "Greeting"
    }
    
}

class Student : Person {
    
    override init(firstname: String, lastname: String) {
        super.init(firstname: firstname, lastname: "S"+lastname)
    }
    
    override var description: String {
        get {
            return "Student : " + super.description
        }
    }
    
    override func sayGreeting() -> String {
        return self.firstname + " " + self.lastname + " !! No i don't want to say : " + super.sayGreeting()
    }
    
}

let student = Student(firstname: "Jean", lastname: "Hache")
print(student.sayGreeting())

let student2 = Student(firstname: "Jean")
print(student2.description)

//Protocols tests
print("\ngreetables")
var greetables : [Greetable] = [student, student2, Class2()]
for greetable in greetables {
    print(greetable.sayGreeting())
}

