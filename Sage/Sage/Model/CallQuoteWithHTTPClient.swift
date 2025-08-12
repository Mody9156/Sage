//
//  CallQuoteWithHTTPClient.swift
//  Sage
//
//  Created by Modibo on 12/08/2025.
//

import Foundation

class CallQuoteWithHTTPClient {
    let session : BasicHTTPClient
    
    init(session: BasicHTTPClient) {
        self.session = session
    }
    
    func callQuote() async throws -> URLRequest {
        let url = URL(string: "https://zenquotes.io/api/quotes")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        return request
    }
    
    func sendInformation() async throws -> [Quote] {
        let request = try await callQuote()
        let (data,response) = try await session.sendQuote(request: request)
        
        guard let HTTPResponse =  response as? HTTPURLResponse, HTTPResponse.statusCode == 200 else {return []}
        let encode = try JSONDecoder().decode([Quote].self, from: data)
        print("encode: \(encode)")
        return encode
    }
}
