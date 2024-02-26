//
//  ContentView.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var tabIndex: TabBar
    var body: some View {
        
        TabView(selection: $tabIndex.selectIndex) {
            AppetizerList()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
                .tag(1)
//            OrderView()
//                .tabItem {
//                    Image(systemName: "bag")
//                    Text("Order")
//                }
//                .tag(2)
        }
        .tint(.brand)
    }
}

#Preview {
    AppetizerTabView()
}
