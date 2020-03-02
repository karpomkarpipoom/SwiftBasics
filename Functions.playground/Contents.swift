import UIKit

var str = "Hello, Today Going To See Functions"

func emptyFunction(str : String) -> String{
    let Value = str + " World"
    return Value
}

print(emptyFunction(str: "hello"))

func MultiParam(valueOne : String, trueorFalse : Bool) -> String{
    
    var common = ""
    if trueorFalse {
        common = "true"
    }else{
        common = "false"
    }
    
    return trueorFalse ? "value of One" : valueOne
}

print(MultiParam(valueOne: "No Value", trueorFalse: false))

// 
func MultiRet(_ str : String = "Sample") -> (String, String){
    
    let first = str.dropFirst()
    let second = str.dropLast()
    
    return (String(first), String(second))
}

print(MultiRet())
