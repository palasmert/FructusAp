//
//  OnboardingView.swift
//  Fructus1App
//
//  Created by mert palas on 27.02.2024.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROP
    
    //MARK: - BODY
    
    var body: some View {
        TabView{
            ForEach(0..<5) { item in
            FruitCardView()
        }//: LOOP
        }//:TAB
        .tabViewStyle(PageTabViewStyle())        .padding(.vertical, 20)
    }
}
//MARK: PREVW
#Preview {
    OnboardingView()
}
