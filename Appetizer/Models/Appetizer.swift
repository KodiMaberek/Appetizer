//
//  Appetizer.swift
//  Appetizer
//
//  Created by Rodion Akhmedov on 2/12/24.
//

import Foundation

struct Appetizer: Identifiable, Codable {
    var id: Int
    var name: String
    var description: String
    var imageURL: String
    var carbs: Int
    var protein: Int
    var calories: Int
    var price: Double
}

struct AppetizerResponse: Codable {
    var request = [Appetizer]()
}
