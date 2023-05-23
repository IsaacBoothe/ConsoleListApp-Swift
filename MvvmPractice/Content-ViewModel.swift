//
//  Content-ViewModel.swift
//  MvvmPractice
//
//  Created by Isaac Boothe on 5/23/23.
//

import Foundation
import SwiftUI

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var isTurnedOn: Bool = false
        @Published var counter = 0
        @Published var itemList = [Item]()
        
        func increment() {
            counter += 1
        }
        
        func addItem(){
            let randomItems = ["Playstation", "Xbox", "Nintendo Wii", "Gameboy"]
            let thisItem = randomItems.randomElement()!
            
            let newItem = Item(name: thisItem, description: "Item: \(itemList.count+1)")
            
            withAnimation {
                itemList.insert(newItem, at: 0)
            }
            
            
        }
    }
}
