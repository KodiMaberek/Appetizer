//
//  Alerts.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    var id = UUID()
    var title: Text
    var description: Text
    var button: Alert.Button
}

struct AlertContext {
    //MARK: Url alert
    let invalideResponse = AlertItem(title: Text("Server Error"), description: Text("Cannot connect from the server. Please try later or connect support"), button: .default(Text("OK")))
    
    let unabledToComplete = AlertItem(title: Text("Error"), description: Text("Unabled to complete. Please check your internet connection"), button: .default(Text("OK")))
    
    
}
