//
//  MangementApi.swift
//  Sage
//
//  Created by Modibo on 11/08/2025.
//

import Foundation


class BasicHTTPClient : ManagementProtocol{
    private let session: URLSession
    
    init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    static func sendQuote(request: URLRequest) async throws -> (
        Data,
        URLResponse
    ) {
        let (data,response) = try await session.data(for: request)
 
}
