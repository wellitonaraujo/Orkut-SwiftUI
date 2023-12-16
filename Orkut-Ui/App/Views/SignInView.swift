//
//  SignInView.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 07/12/23.
//

import SwiftUI

struct SignInView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Logo()
    
                Spacer()
                
                InputField(label: "Email", placeholder: "", text: $email)
                    .padding(.bottom, 15)
                InputField(label: "Senha", placeholder: "", text: $password)
                
                VStack {
                    Text("Esqueci minha senha")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color("NEUTRAL-GRAY100"))
                       
                    Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 120, height: 0.5)
                    .background(Color("PRIMARY-LIGHT"))
                    .padding(.top, -8)
   
                }
                .padding(.top, 10)
                
                NavigationLink(destination: HomeView()) {
                    PrimaryButton(title: "Login")
                }
                
               
                
                Text("Ou logar com")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(Color("NEUTRAL-GRAY400"))
                    .padding(.vertical, 25)
                
                HStack {
                    SocialButton(img: "google", title: "Goolge")
                    SocialButton(img: "apple", title: "Apple ID")
                }
                
                SignInFooter()
                
                Spacer()
                
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

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
