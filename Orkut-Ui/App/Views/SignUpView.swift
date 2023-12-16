//8
//  SignUpView.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 07/12/23.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var name: String = ""
    @State private var lastname: String = ""
    @State private var username: String = ""
    
    var body: some View {
        NavigationStack {
            VStack  {
                SliderCirclesSignup(itemCircleIndex: 0).padding()
                SignUpHeader()
            
            Spacer()
            
            InputField(label: "Nome", placeholder: "", text: $name)
            InputField(label: "Sobrenome", placeholder: "", text: $lastname)
            InputField(label: "Nome de Usuário", placeholder: "", text: $username)
            
            NavigationLink(destination: SignUpViewNext()) {
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

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
