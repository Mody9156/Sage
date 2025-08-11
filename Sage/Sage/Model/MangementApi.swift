//
//  MangementApi.swift
//  Sage
//
//  Created by Modibo on 11/08/2025.
//

import Foundation


class MangementApi : ManagementProtocol{
       let session: URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    static func sendQuote() -> (Data, URLResponse) {
        <#code#>
    }

  
}
