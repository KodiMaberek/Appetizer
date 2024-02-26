//
//  AccountViewModel.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/13/24.
//

import Foundation
import SwiftUI

final class AccountViewModel: ObservableObject {
    @AppStorage("person") var savedData: Data?
    
    @Published var person = PersonInfo()
    @Published var alert: AlertItem?
    
    var correctFirstName: Bool {
        guard !person.firstName.isEmpty else {
            alert = AlertContext().invalidFirstName
            return false
        }
        return true
    }
    var correctLastname: Bool {
        guard !person.lastName.isEmpty else {
            alert = AlertContext().invalidLastname
            return false
        }
        return true
    }
    
    var correctEmain: Bool {
        guard person.email.correctEmail && !person.email.isEmpty else {
            alert = AlertContext().invalidEmail
            return false
        }
        return true
    }
    
    func saveChange() {
        guard correctFirstName && correctLastname && correctEmain else { return }
        
        do {
            let encoded = try JSONEncoder().encode(person)
            savedData = encoded
            alert = AlertContext().saveUser
        } catch {
            alert = AlertContext().errorSave
            print(error.localizedDescription)
        }
    }
    
    func retrieving() {
        guard let userData = savedData else { return }
        
        do {
            let decoded = try JSONDecoder().decode(PersonInfo.self, from: userData)
            person = decoded
        } catch {
            print(error.localizedDescription)
        }
    }
}
