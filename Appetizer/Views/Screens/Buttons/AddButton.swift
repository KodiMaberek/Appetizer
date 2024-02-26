//
//  AddButton.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

struct AddButton: View {
    @Environment(\.colorScheme) var colorScheme
    
    var title: LocalizedStringKey
    
    var body: some View {
        HStack {
            Text(title).fontWeight(.semibold)
                .font(.title2)
                .frame(width: 250, height: 45)
                .background(colorScheme == .dark ? .gray : .brand)
                .foregroundStyle(colorScheme == .dark ? .brand : .white)
                .clipShape(.rect(cornerRadius: 10, style: .continuous))
        }
    }
}

#Preview {
    Group {
        AddButton(title: "$ 9.9 - add to order")
            .preferredColorScheme(.dark)
    }
}
