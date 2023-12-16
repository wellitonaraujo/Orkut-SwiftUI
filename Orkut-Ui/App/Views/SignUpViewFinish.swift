//
//  SignUpViewFinish.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 10/12/23.
//

import SwiftUI

struct SignUpViewFinish: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var confirm_password: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack  {
                SliderCirclesSignup(itemCircleIndex: 2).padding()
               
                SignUpHeader()
            
                Spacer()
                
                InputField(label: "Senha", placeholder: "", text: $password)
                InputField(label: "Confirme senha", placeholder: "", text: $confirm_password)
                
                NavigationLink(destination: Onboarding(img: "onboarding03", circle: "onboarding-circle", title: "Cadastro finalizado 👏", subTitle: "", imgNext: "btn-next", destination: SignInView())) {
                    PrimaryButton(title: "Próximo")
                }
                
                NeedHelp(title: "Preciso de ajuda")
                
                Spacer()
            
                Logo()
            }
        }
        .padding(.horizontal, 30)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
    
    private var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "arrow.left")
                    .foregroundColor(Color("PRIMARY-DEFAULT"))
            }
        }
    }
}

struct SignUpViewFinish_Previews: PreviewProvider {
    static var previews: some View {
        SignUpViewFinish()
    }
}
