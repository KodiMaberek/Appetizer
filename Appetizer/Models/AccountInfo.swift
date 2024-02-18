//
//  AccountInfo.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/13/24.
//

import Foundation

struct AccountInfo: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var birthDate = Date()
    var email: String = ""
    
    var adress: String = ""
    
    var extraNapkins: Bool = false
    var freqencyOrder: Bool = false
}
