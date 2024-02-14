//
//  NutritionMenu.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

struct NutritionMenu: View {
    var title: String
    var info: String
    var body: some View {
        VStack(spacing: 8) {
          Text(title)
                .bold()
                .font(.caption)
            Text(info).fontWeight(.semibold).italic()
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    NutritionMenu(title: "Carbs", info: "9")
}
