//
//  ZStack.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import Foundation
import SwiftUI

extension ZStack {
    func showingDetails(showingDetail: Binding<Bool>, appetizer: Appetizer?) -> some View {
        overlay.self {
            if showingDetail.wrappedValue {
                Group {
                    AppetizerDetail(appetizer: appetizer!, showingDetails: showingDetail)
                }
            }
        }
    }
}
