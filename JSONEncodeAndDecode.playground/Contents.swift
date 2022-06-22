import UIKit

struct Language: Codable {
    let languageID: String
    let Description: String
    let old: Int
}

let _language = [Language(languageID: "TA", Description: "Tamil", old: 2000),
                Language(languageID: "EN", Description: "English", old: 500)]

do {
    // Encoder
    let jsonData = try JSONEncoder().encode(_language)
    let jsonString = String(data: jsonData, encoding: .utf8)
    print(jsonString as Any)

    // decoder
    let dataValue = Data(jsonString!.utf8)
    let decode = try JSONDecoder().decode([Language].self, from: dataValue)
    decode[0].Description
} catch {
    print(error)
}


