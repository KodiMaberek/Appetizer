//
//  Order.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/15/24.
//

import Foundation
import SwiftUI

struct Order: Codable, Equatable {
  
    
    var items: [Appetizer] = []
    
    enum CodingKeys: String, CodingKey {
        case _item = "item"
    }
}
