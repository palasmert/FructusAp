//
//  FruitDetailView.swift
//  Fructus1App
//
//  Created by mert palas on 28.02.2024.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: PROP
    var fruit: Fruit
    //MARK:- BODY
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: . center, spacing: 20){
                    //:HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        //:TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //:HEADLINE
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //:NUTRIENTS
                        FruitsNutrientsView(fruit: fruit)
                                  
                        //:SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //: DESC
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //: LINK
                        SourceViewLink()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                        
                    }//:VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }//: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVVIEW
    }
}
//MARK: PREV
#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
