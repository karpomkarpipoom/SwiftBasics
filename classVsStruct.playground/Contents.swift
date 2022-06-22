import UIKit

/*
when struct - value type
 - its simple Data type (so complex relationship with object big NO!!)
 - thread safety (instance create panrathula ithu tha best)
 - dont need to inheritance ()


when class - reference type
 - inherit
 - deinitialized
 - identity operations
*/


// value type
struct Person {
    var name: String
    var age: Int
}

var _person = Person(name: "bala", age: 27)
var personTwo = _person

_person.name = "murugan"

print(_person)
print(personTwo)



// reference Type
class People {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// reference type
var _people = People(name: "suresh", age: 30)
var peopleTwo = _people

peopleTwo.name = "kumar"

print(peopleTwo.name)
print(_people.name)
