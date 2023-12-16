//
//  SplashScreenViewModel.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 10/12/23.
//

import Foundation
import SwiftUI

class SplashScreenViewModel: ObservableObject {
    @Published var showOnboarding = false
    
    func startTimerToShowOnboarding() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            withAnimation {
                self.showOnboarding = true
            }
        }
    }
}
