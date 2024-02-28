//
//  ContentView.swift
//  Fructus1App
//
//  Created by mert palas on 27.02.2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROP
    var fruits: [Fruit]  = fruitsData
    //MARK: BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 5)
                }
            }
            .navigationTitle("Fruits")
        }//:NAVW
        
        
        
        
    }
}
//MARK: PREV
#Preview {
    ContentView(fruits: fruitsData)
}
