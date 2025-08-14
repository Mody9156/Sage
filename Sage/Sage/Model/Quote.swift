//
//  Quote.swift
//  Sage
//
//  Created by Modibo on 11/08/2025.
//

import Foundation

struct Quote : Decodable{
    let text : String
    let name : String
    let fullText : String
    let number : Int
   
    enum CodingKeys: String, CodingKey {
        case text = "q"
        case name = "a"
        case fullText = "h"
        case number = "c"
    }
}
