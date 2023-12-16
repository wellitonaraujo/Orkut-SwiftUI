//
//  OnboardingView03.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 07/12/23.
//

import SwiftUI

struct OnboardingView03: View {
  
    @Environment(\.presentationMode) var presentationMode
    @StateObject var backButtonViewModel = BackButtonViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image("onboarding-circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    
                    Image("onboarding03")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .padding(.bottom, -40)
                }
                .padding(.bottom, 20)
                
                SliderCircles(itemCircleIndex: 2)
                
                Text("Divirta-se!")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.top, 50)
                Text("O que falar desse app que mal conheço e já considero pakas.")
                    .padding(.top, 10)
                    .font(.system(size: 16, weight: .thin))
                
                Spacer()
                
                NavigationLink(destination: SignInView()) {
                    Image("btn-next")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)

                }
            }
            
        }
    }
}

struct OnboardingView03_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView03()
    }
}
