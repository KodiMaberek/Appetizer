//
//  AddButton.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

struct AddButton: View {
    
    var title: LocalizedStringKey
    
    var body: some View {
        HStack {
            Text(title).fontWeight(.semibold)
                .font(.title2)
                .frame(width: 250, height: 45)
                .foregroundStyle(.white)
                .background(Color(.brand))
                .clipShape(.rect(cornerRadius: 10, style: .continuous))
        }
    }
}

#Preview {
    AddButton(title: "$ 9.9 - add to order")
}
