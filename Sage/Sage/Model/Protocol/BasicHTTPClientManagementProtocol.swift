//
//  ManagementProtocol.swift
//  Sage
//
//  Created by Modibo on 11/08/2025.
//

import Foundation

protocol BasicHTTPClientManagementProtocol {
     func sendQuote(request:URLRequest) async throws -> (Data,URLResponse)
}
