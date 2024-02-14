//
//  NetworkManager.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import Foundation

enum URlError: Error {
    case invalideResponse
    case unabledToContinue
}

final class NetworkManager {
    
    static let manager = NetworkManager()
    private init() {}
    
    func loadData() async throws -> [Appetizer] {
        let (data, response) = try await URLSession.shared.data(from: .mainUrl)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw URlError.invalideResponse
        }
        
        let decoded = try JSONDecoder().decode(AppetizerResponse.self, from: data)
        return decoded.request
    }
}
