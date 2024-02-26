//
//  OrderViewModel.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/15/24.
//

import Foundation
import SwiftUI

final class OrderViewModel: ObservableObject {
    @AppStorage("order") var saveOrder: Data?
    
    @Published var order = Order()
    
    func add(_ appertizer: Appetizer) {
        order.items.append(appertizer)
    }
    
    func delete(at offset: IndexSet) {
        order.items.remove(atOffsets: offset)
        saveOrderList()
    }
    
    func saveOrderList() {
        let encoded = try? JSONEncoder().encode(order)
        saveOrder = encoded
    }
    
    func retrivieng() {
        guard let orderData = saveOrder else { return }
        
        do {
            let decoder = try JSONDecoder().decode(Order.self, from: orderData)
            order = decoder
        } catch {
            print(error.localizedDescription)
        }
    }
    
    var totalPrice: Double {
        order.items.reduce(0) { $0 + $1.price }
    }
}
