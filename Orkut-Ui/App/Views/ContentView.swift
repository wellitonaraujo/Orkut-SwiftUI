//
//  ContentView.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 06/12/23.
//

import SwiftUI

enum AppView {
    case onboarding
    case tabBar
}

struct ContentView: View {
    @State private var appView: AppView = .onboarding
    
    var body: some View {
        VStack {
            if appView == .onboarding {
                OnboardingView(completion: {
                self.appView = .tabBar
            })
            } else if appView == .tabBar {
                TabBarView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
