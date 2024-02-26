//
//  AppetizerList.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

struct AppetizerList: View {
    
    @StateObject var vm = AppetizerViewModel()
    
    @State private var showingDetails = false
    
    var body: some View {
        NavigationView {
            ZStack {
                List(vm.appetizer) { appetizer in
                    AppetizerCell(appetizer: appetizer)
                        .onTapGesture {
                            withAnimation {
                                vm.appetizerSelect = appetizer
                                showingDetails = true
                            }
                        }
                }
            }
            .sheet(isPresented: $showingDetails, content: {
                AppetizerDetail(appetizer: vm.appetizerSelect!, showingDetails: $showingDetails)
                    .transition(.slide.animation(.bouncy))
            })
            .isLoadingView(loading: vm.isLoading)
            .task {
                await vm.load()
            }
            .alert(item: $vm.alert, content: { alert in
                Alert(title: alert.title, message: alert.description, dismissButton: alert.button)
            })
            .navigationTitle("Appetizer 🍟")
            
        }
    }
}

#Preview {
    AppetizerList()
}
