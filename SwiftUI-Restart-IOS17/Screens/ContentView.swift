//
//  ContentView.swift
//  SwiftUI-Restart-IOS17
//
//  Created by Daniel Felipe on 16/02/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview { ContentView() }
