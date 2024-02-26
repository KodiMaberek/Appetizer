//
//  OrderIsEmpty.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/15/24.
//

import SwiftUI

struct OrderIsEmpty: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var tabIndex: TabBar
    
    @State private var goTomenu = false
    var body: some View {
        NavigationView {
            ZStack {
                VStack(spacing: 30) {
                    Image(.emptyOrder)
                        .resizable()
                        .frame(width: 300, height: 230)
                    Text("It's empty here")
                        .font(.title2)
                    Text("Why don't you add anufood in your bag?")
                        .foregroundStyle(.secondary)
                    
                    Button(action: {
                        tabIndex.selectIndex = 0
                    }, label: {
                        AddButton(title: "Go to menu")
                    })
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    OrderIsEmpty()
}
