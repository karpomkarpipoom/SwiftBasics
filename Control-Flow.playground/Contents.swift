import UIKit

var str = "Hello, playground"

// for loop old
// for (i = 0 ; i > 10 ; i++){
 //    print(i)
//  }

let name = ["one", "two", "three"]
for (index , element) in name.enumerated() {
    print("index of \(index) is \(element)")
}

let Dict = ["one" : 1, "two" : 2, "three": 3]
for (key , value) in Dict {
    print("index of \(key) is \(value)")
}

var endPoint = 7
for index in 1...endPoint {
    print(index)
}


// while loop
var index = 1

while index < 10 {
    print("value is \(index)")
    index = index + 1
}

var currentlevel = 0
var finalLevel = 5
let gameplayComplete = true

while (currentlevel <= finalLevel) {
    
    if gameplayComplete{
        print("you have passed level of \(currentlevel)")
        currentlevel += 1
    }
    
}

// repet while loop
var startlevel = 0

repeat{
    if gameplayComplete{
        print("start you have passed level of \(startlevel)")
        startlevel += 1
    }
}while(startlevel <= finalLevel)

print("game over - thank you for play")
print("------===========-------========-------====-----==--=")

//  Condition Statements

var temperature = 32

// if condition
if temperature <= 32 {
    print("its cold")
}

//if else condition
if temperature <= 32 {
    print("its cold")
}else{
    print("its not cold")
}


if temperature <= 30 {
    print("its cold")
}else if (temperature <= 32){
    print("normal temperature")
}else{
    print("its not cold")
}

// guard Condtion
func sampleGueard(){
    
    guard temperature <= 32 else {
        print("not cold")
        return
    }
    
    print("its true cold")
}

sampleGueard()

// swich condition


switch temperature {
case 30:
    print("temperature is \(temperature)")
case 31:
    print("31 temperature is \(temperature)")
case 32:
    print("32 cond temperature is \(temperature)")
case 33:
    print("33 condi temperature is \(temperature)")
default:
    print("default temperature is \(temperature)")

}



switch temperature {
case 30,31,32:
    print("temperature is \(temperature)")
case 33,34,35:
    print("hot temperature is \(temperature)")
case 36,37,38:
    print("to hot temperature is \(temperature)")

default:
    print("default temperature is \(temperature)")
    
}

temperature = 36

switch temperature {
case 30..<33:
    print("temperature is \(temperature)")
case 33..<36:
    print("hot temperature is \(temperature)")
case 36..<39:
    print("to hot temperature is \(temperature)")
    
default:
    print("default temperature is \(temperature)")
    
}
var somePoint = (0,0)

switch somePoint {
case (0,0):
    print("center point")
case (0,1):
    print("left point")
case (1,0):
    print("right point")
    
default:
    print("default")
    
}


somePoint = (1,-1)

switch somePoint {
case (let x,0) :
    print("center point \(x)")
case (0,let y):
    print("left point \(y)")
case let (x,y) where x == y:
    print("right point \(x),\(y)")
    
default:
    print("default")
    
}

print("------===========-------========-------====-----==--=")

// Control transfer Statement


// continue
let charecter = "welcome to karpom"
var removedChar = ""
let removechar = [" ", "h", "e", "i", "o"]
for char in removechar {
    if charecter.contains(char){
        continue
    }
    removedChar.append(char)
}
print(removedChar)


// Break

func breakFunction(){
    
    temperature = 35
    
    switch temperature {
    case 30:
        print("temperature is \(temperature)")
    case 31:
        print("31 temperature is \(temperature)")
    case 32:
        print("32 cond temperature is \(temperature)")
    case 33:
        print("33 condi temperature is \(temperature)")
    default:
        break
    }
    
    print("Break function --------")
}

breakFunction()

func fallFunction(){
    
    temperature = 33
    
    switch temperature {
    case 30,31,32,33,34:
        print("fall temperature is \(temperature)")
        fallthrough

    default:
        print("and value")
    }
    
    print("fallthrough function --------")
}

fallFunction()

func finallyReturn(){

    temperature = 30
    if temperature == 30 {
        print("temperature is \(temperature)")
        return
    }
    
    print("return is fail")
}

finallyReturn()

