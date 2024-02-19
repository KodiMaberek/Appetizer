//
//  OrderViewModel.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/15/24.
//

import Foundation
import SwiftUI

final class OrderViewModel: ObservableObject {
    @Published var order = Order()
    
    func add(_ appertizer: Appetizer) {
        order.items.append(appertizer)
    }
    
    func delete(at offset: IndexSet) {
        order.items.remove(atOffsets: offset)
    }
}
