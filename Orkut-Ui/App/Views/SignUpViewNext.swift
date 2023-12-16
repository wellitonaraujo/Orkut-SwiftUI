//
//  SignUpViewNext.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 10/12/23.
//

import SwiftUI

struct SignUpViewNext: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var email: String = ""
    @State private var fone: String = ""
    
    var body: some View {
        NavigationStack {
            VStack  {
                SliderCirclesSignup(itemCircleIndex: 1).padding()
                SignUpHeader()
                
                Spacer()
                
                InputField(label: "Email", placeholder: "", text: $email)
                InputField(label: "Telefone", placeholder: "", text: $fone)
                
                NavigationLink(destination: SignUpViewFinish()) {
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

struct SignUpViewNext_Previews: PreviewProvider {
    static var previews: some View {
        SignUpViewNext()
    }
}
