//
//  Fructus1AppApp.swift
//  Fructus1App
//
//  Created by mert palas on 27.02.2024.
//

import SwiftUI

@main
struct Fructus1AppApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
           
            }
        }
    }
}
