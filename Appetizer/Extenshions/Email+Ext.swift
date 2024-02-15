//
//  Email+Ext.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/13/24.
//

import Foundation

extension String {
    var correctEmail: Bool {
        let emailFormatt = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
        let emailPredicate = NSPredicate(format:"SELF MATCHES[c] %@", emailFormatt)
        return emailPredicate.evaluate(with: self)
    }
}
