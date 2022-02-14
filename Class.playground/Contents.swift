import UIKit

struct class10 {
    var allPass: Bool
}

class classroom {
    
    var strudents = 0
    var nameOfClass = ""
    var allPass: Bool
    
    init(pass: Bool){
        self.allPass = pass
    }
    
    func totalStudents(totalCount: Int) {
        print("total students in \(nameOfClass) is \(totalCount)")
    }
    
}


let class11 = classroom(pass: true)
class11.allPass
class11.nameOfClass = "Class of 11"
class11.totalStudents(totalCount: 20)
class11
