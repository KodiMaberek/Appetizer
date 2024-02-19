//
//  AppetizerApp.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

@main
struct AppetizerApp: App {
    
 var order = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
