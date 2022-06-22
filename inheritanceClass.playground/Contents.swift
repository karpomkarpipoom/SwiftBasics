import UIKit

// Base Class
class SocialProfile {
    var userName: String
    var age: Int
    
    init(userName: String, age: Int) {
        self.userName = userName
        self.age = age
    }
    
    func isUnder18() -> Bool {
        return age < 18
    }
}


// Subclass : SuperClass
class Facebook: SocialProfile {
    var Token: String
    
    // designated initializers
    init (userName: String, age: Int, token: String){
        self.Token = token
        super.init(userName: userName, age: age)
    }
    
    // convenience Initializers
    convenience init (token: String) {
        self.init(userName: "Bala", age: 28, token: token)
    }
    
    override func isUnder18() -> Bool {
        return age < 21
    }
}

let fb = Facebook(userName: "bala", age: 28, token: "lhbapishoijweipiywgef9h0[iwje")
fb.userName
fb.isUnder18()
fb.Token

let insta = Facebook(token: "aiub9uhqw-8ey-8w8egfb9we7f9-we")
insta.userName
insta.Token

let social = SocialProfile(userName: "balaM", age: 12)




//
class twitter: SocialProfile {
    var firstName: String
    var lastName: String
    
    // Computed Properties
    var name: String {
        return firstName + " " + lastName
    }
    
    // Getter and Setter method
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            super.userName = newValue
        }
    }
    
    init(userName: String, age: Int, firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        
        super.init(userName: userName, age: age)
    }
}


let twitterAccount = twitter(userName: "blabla", age: 29, firstName: "bala", lastName: "murugan")
twitterAccount.fullName = "namessss"
twitterAccount.userName

