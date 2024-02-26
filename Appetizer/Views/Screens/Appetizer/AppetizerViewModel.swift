//
//  AppetizerViewModel.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import Foundation
import SwiftUI

final class AppetizerViewModel: ObservableObject {
    
    @Published var appetizer = [Appetizer]()
    
    let shared = NetworkManager.manager
    
    @Published var isLoading = false
    @Published var alert: AlertItem?
    @Published var appetizerSelect: Appetizer?
    
    @MainActor
    func load() async {
        isLoading = true
        do {
            let request = try await shared.loadData()
            appetizer = request
        } catch {
            alert = AlertContext().unabledToComplete
            print(error.localizedDescription)
        }
        isLoading = false
    }
}

