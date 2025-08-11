//
//  ManagementProtocol.swift
//  Sage
//
//  Created by Modibo on 11/08/2025.
//

import Foundation

protocol ManagementProtocol {
    static func sendQuote(request:URLRequest) -> (Data,URLResponse)
}
