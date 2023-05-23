//
//  ItemModel.swift
//  MvvmPractice
//
//  Created by Isaac Boothe on 5/22/23.
//

import Foundation

struct Item: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    
    static var exampleItem = Item(name: "Xbox", description: "Sample description")
    
}
