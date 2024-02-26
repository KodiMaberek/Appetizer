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
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(vm.order.items) { order in
                            AppetizerCell(appetizer: order)
                        }
                        .onDelete(perform: vm.delete)
                    }
                    .listStyle(.inset)
                    
                    Button {
                        
                    } label: {
                        AddButton(title: "\(vm.totalPrice) ")
                    }
                    .onAppear {
                        vm.retrivieng()
                    }
                    .disabled(vm.order.items.isEmpty ? true : false)
                }
            }
            .navigationTitle("Order 🧾")
        }
        .isOrderEmpty(vm.order.items.isEmpty)
    }
}

#Preview {
    OrderView()
}

