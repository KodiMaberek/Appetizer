//
//  OrderView.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/18/24.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var vm: OrderViewModel
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(vm.order.items) { order in
                        AppetizerCell(appetizer: order)
                    }
                    .onDelete(perform: vm.delete)
                }
                .disabled(vm.order.items.isEmpty ? true : false)
                .navigationTitle("Order 🧾")
            }
            if vm.order.items.isEmpty {
                OrderIsEmpty()
                    .offset(y: 200)
            }
        }
    }
}

#Preview {
    OrderView()
}
