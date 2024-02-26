//
//  AppetizerDetail.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

struct AppetizerDetail: View {
    
    @EnvironmentObject var order: OrderViewModel
    
    var appetizer: Appetizer
    
    @Binding var showingDetails: Bool
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(.rect(cornerRadius: 10, style: .circular))
                    .frame(width: 380, height: 300)
                    .shadow(radius: 8)
                
            } placeholder: {
                Image(.foodPlaceholder)
                    .resizable()
                    .scaledToFit()
            }
            
            VStack(spacing: 25) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionMenu(title: "Protein", info: String(appetizer.protein))
                    NutritionMenu(title: "Carbs", info: String(appetizer.carbs))
                    NutritionMenu(title: "Calories", info: String(appetizer.calories))
                }
                Spacer()
                Button {
                    showingDetails = false
                    order.add(appetizer)
                    order.saveOrderList()
                } label: {
                    AddButton(title: "\(appetizer.price, format: .currency(code: "USD")) - add to Order")
                        .padding()
                }
            }
            Spacer()
        }
    }
}

#Preview {
    AppetizerDetail(appetizer: Appetizer(id: 1, name: "Asian Flake Stake", description: "This perfectly thin cut just melts in your mouth", imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", carbs: 6, protein: 12, calories: 340, price: 9.99), showingDetails: .constant(true))
}
