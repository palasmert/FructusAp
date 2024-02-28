//
//  StartButtonView.swift
//  Fructus1App
//
//  Created by mert palas on 27.02.2024.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROP
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    //MARK: - BODY
    
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack {
                Text("Start")
                    
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//:BUTTON
        .accentColor(Color.white)
    }
}
//MARK: PREVW
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
