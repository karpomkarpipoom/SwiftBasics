//: Playground - noun: a place where people can play

import UIKit

let strings : String = "some value"

let invalidUTF8: [CChar] = [67, 97, 102, -61, 0]
     invalidUTF8.withUnsafeBufferPointer { ptr in
         let s = String(cString: ptr.baseAddress!)
         print(s)
     }

