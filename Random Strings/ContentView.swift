//
//  ContentView.swift
//  Random Strings
//
//  Created by Antony Holshouser on 11/8/24.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var name:String
}

struct ContentView: View {
    
    var possibleItems = [
        "One",
        "Two",
        "Three",
        "Four",
        "Five"
    ]
    
    @State var items:[Item] = []
    
    var body: some View {
        VStack {
            List(items) { item in
                Text(item.name)
            }
            
            Button {
                let index = Int.random(in: 0...4)
                let newItem = Item(name: possibleItems[index])
                items.append(newItem)
            } label: {
                Text("Click Me!")
                    .foregroundStyle(Color.black)
                    .bold()
                    .font(.title)
            }
        }
    }
}

#Preview {
    ContentView()
}
