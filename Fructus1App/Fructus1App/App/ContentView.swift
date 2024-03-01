//
//  ContentView.swift
//  Fructus1App
//
//  Created by mert palas on 27.02.2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROP
    
    @State  private var isShowingSettings: Bool = false
    
    var fruits: [Fruit]  = fruitsData
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //: Button
                    .sheet(isPresented: $isShowingSettings)   {
                        SettingsView()
                    }
            )
                
            
        }//:NAVW
        
        
        
        
    }
}
//MARK: PREV
#Preview {
    ContentView(fruits: fruitsData)
}
