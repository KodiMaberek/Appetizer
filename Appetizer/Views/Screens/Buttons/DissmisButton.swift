//
//  DissmisButton.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import SwiftUI

struct DissmisButton: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(.gray)
                .frame(width: 25)
            Image(systemName: "chevron.down.circle")
                .opacity(0.6)
                .imageScale(.large)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    DissmisButton()
}
