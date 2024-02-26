//
//  View+Ext.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import Foundation
import SwiftUI

extension View {
    func isLoadingView(loading: Bool) -> some View {
        overlay.self {
            Group {
                if loading {
                    ProgressView()
                        .scaleEffect(1.5)
                        .tint(.brand)
                }
            }
        }
    }
}

extension NavigationView {
    func isOrderEmpty(_ value: Bool) -> some View {
        overlay.self {
            Group {
                if value {
                    OrderIsEmpty()
                        .offset(y: 200)
                }
            }
        }
    }
}
