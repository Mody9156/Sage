//
//  MangementApi.swift
//  Sage
//
//  Created by Modibo on 11/08/2025.
//

import Foundation


class BasicHTTPClient : ManagementProtocol{
    
    private let session : URLSession
    
    init(session: URLSession = .shared) {
        self.session = session
    }
    
    enum Error: Swift.Error {
        case invalidURL
    }
    
    func sendQuote(request: URLRequest) async throws -> (Data, URLResponse) {
        let (data,response) = try await session.data(for: request)
        
        guard let HttpResponse = response as? HTTPURLResponse, HttpResponse.statusCode == 200 else{
            throw Error.invalidURL
        }
        return (data,response)
    }
}
