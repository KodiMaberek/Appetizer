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
    //MARK: URL alert
    let invalideResponse = AlertItem(title: Text("Server Error"), description: Text("Cannot connect from the server. Please try later or connect support"), button: .default(Text("OK")))
    
    let unabledToComplete = AlertItem(title: Text("Error"), description: Text("Unabled to complete. Please check your internet connection"), button: .default(Text("OK")))
    
    //MARK: Account alert
    let invalidFirstName = AlertItem(title: Text("Missing first name"), description: Text("Please enter your first name"), button: .default(Text("OK")))
    
    let invalidLastname = AlertItem(title: Text("Missing last name"), description: Text("Please enter your first name"), button: .default(Text("OK")))
    
    let invalidEmail = AlertItem(title: Text("Invalide email"), description: Text("Please enter correct email"), button: .default(Text("OK")))
    
    //MARK: Save data
    let saveUser = AlertItem(title: Text("Profile Saved"), description: Text("You new information was success save"), button: .default(Text("OK")))
    
    let errorSave = AlertItem(title: Text("Profile Error"), description: Text("Couldn't save new information"), button: .default(Text("OK")))
}
