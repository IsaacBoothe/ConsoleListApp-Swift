//
//  ContentView.swift
//  MvvmPractice
//
//  Created by Isaac Boothe on 5/22/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var myView = ViewModel()
    
    var body: some View {
        VStack{
            Toggle("Toggle Switch", isOn: $myView.isTurnedOn)
                .padding()
            
            List(myView.itemList) { item in
                HStack{
                    Text(item.name)
                    Spacer()
                    Text(item.description)
                }
            }
            .listStyle(.plain)
            .background(.thinMaterial)
            
            Button("Add Item"){
                myView.addItem()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
