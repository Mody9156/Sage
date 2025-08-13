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
   
    enum CodingKeys: String, CodingKey {
        case text = "q"
        case name = "a"
    }
}
