//
//  AppetizerCell.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

struct AppetizerCell: View {
    
    var appetizer: Appetizer
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                Image(.foodPlaceholder)
                    .resizable()
            }
            .clipShape(.rect(cornerRadius: 10, style: .continuous))
            .frame(width: 120, height: 90)
            .aspectRatio(contentMode: .fill)
            
            
            
            VStack(alignment: .leading) {
                Text(appetizer.name)
                    .font(.subheadline)
                Text(appetizer.price, format: .currency(code: "USD"))
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    AppetizerCell(appetizer: Appetizer(id: 1, name: "Asian Flake Stake", description: "This perfectly thin cut just melts in your mouth", imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/asian-flank-steak.jpg", carbs: 6, protein: 12, calories: 340, price: 9.99))
}
