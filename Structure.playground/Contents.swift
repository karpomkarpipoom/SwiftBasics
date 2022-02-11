import UIKit

// Protocol
protocol markSystem {
    func isPass()
    func isFail()
}

// we can inherit Protocol not class
struct view: markSystem {
    func isPass() {}
    func isFail() {}
}

// structure
struct Person {
    let name: String
    let age: Int
    let city: String
    private var mark: Int // private variable
    
    
    // Initializers for Structure
    init(fullName: String, myAge: Int, city: String?, mark: Int){
        self.name = fullName
        self.age = myAge
        self.city = city ?? "chennai"
        self.mark = mark
    }
    
    /*
     // Initializer - Structure for correct naming convertion
     init(name: String, age: Int, city: String?, mark: Int){
         self.name = name
         self.age = age
         self.city = city ?? "chennai"
         self.mark = mark
     }
     */
    
    // Basic Function
    func isFailed() -> Bool {
        return self.mark < 35
    }
    
    // mutating function
    mutating func updateMark() {
        self.mark = 50
    }
}

// call the mutating Function
var people = Person(fullName: "Bala", myAge: 27, city: nil, mark: 30)
people.city
people.name
people.updateMark() // if u remove this, im failed 😅
people.isFailed()


// call non Mutating function
let SecondPerson = Person(fullName: "Raghul", myAge: 23, city: "Madurai", mark: 40)
SecondPerson.city
SecondPerson.name
SecondPerson.isFailed()
