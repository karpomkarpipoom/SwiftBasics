import UIKit

struct Person {
    
    let name: String
    let age: Int
    let city: String
    
    init(name: String, age: Int, city: String?){
        self.name = name
        self.age = age
        self.city = city ?? "chennai"
    }
}


let people = Person(name: "bala", age: 23, city: nil)
people.city
people.name

let maduraiPeople = Person(name: "ragul", age: 31, city: "")
maduraiPeople.city
maduraiPeople.name
