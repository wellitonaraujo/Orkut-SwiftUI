//
//  OnboardingView.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 11/12/23.
//

import SwiftUI

struct OnboardingView: View {
    @State private var isNavigationBarHidden = true
    @State private var hideBackButton = true
    
    var body: some View {
        NavigationStack {
            VStack {
                Onboarding(
                    img: "onboarding-circle",
                    circle: "onboarding01",
                    title: "Olha quem voltou!",
                    subTitle: "O Orkut está de volta! Melhor e moderno",
                    imgNext: "btn-next",
                    
                    
                    destination: Onboarding(
                        img: "onboarding-circle",
                        circle: "onboarding02",
                        title: "As comunidades voltaram",
                        subTitle: "Conheça pessoas, crie e interaja nas comunidades",
                        imgNext: "btn-next",
                        
                        destination: Onboarding(
                            img: "onboarding-circle",
                            circle: "onboarding03",
                            title: "Divirta-se!",
                            subTitle: "O que falar desse app que mal conheço e já considero pakas.",
                            imgNext: "btn-next",
                            
                            destination: SignInView() )
                    )
                )
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
