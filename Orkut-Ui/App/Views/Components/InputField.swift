//
//  InputField.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 07/12/23.
//

import SwiftUI

struct InputField: View {
    var label: String
     var placeholder: String
     @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(label)
                .font(.system(size: 14, weight: .regular))
                .foregroundColor(Color("NEUTRAL-GRAY100"))
                .padding(.bottom, 5)
            
            if label.lowercased() == "senha" {
                SecureField(placeholder, text: $text)
                    .foregroundColor(.black)
                    .textContentType(.password)
                    .padding(.horizontal, 20)
                    .frame(height: 48)
                    .background(Color("INPUT"))
                    .cornerRadius(32)
                
                
            } else if label.lowercased() == "email" {
                TextField(placeholder, text: $text)
                    .foregroundColor(.black)
                
                    .keyboardType(.emailAddress)
                    .padding(.horizontal, 20)
                    .frame(height: 48)
                    .background(Color("INPUT"))
                    .cornerRadius(32)
                
            } else if label.lowercased() == "nome" {
                TextField(placeholder, text: $text)
                    .foregroundColor(.black)
                
                    .keyboardType(.emailAddress)
                    .padding(.horizontal, 20)
                    .frame(height: 48)
                    .background(Color("INPUT"))
                    .cornerRadius(32)
                
            } else if label == "Nome de Usuário" {
                TextField(placeholder, text: $text)
                    .foregroundColor(.black)
                
                    .keyboardType(.emailAddress)
                    .padding(.horizontal, 20)
                    .frame(height: 48)
                    .background(Color("INPUT"))
                    .cornerRadius(32)
                
            } else if label == "Telefone" {
                TextField(placeholder, text: $text)
                    .foregroundColor(.black)
                
                    .keyboardType(.emailAddress)
                    .padding(.horizontal, 20)
                    .frame(height: 48)
                    .background(Color("INPUT"))
                    .cornerRadius(32)
                
            } else if label == "Sobrenome" {
                TextField(placeholder, text: $text)
                    .foregroundColor(.black)
                
                    .keyboardType(.emailAddress)
                    .padding(.horizontal, 20)
                    .frame(height: 48)
                    .background(Color("INPUT"))
                    .cornerRadius(32)
                
            } else if label == "Confirme senha" {
                TextField(placeholder, text: $text)
                    .foregroundColor(.black)
                
                    .keyboardType(.emailAddress)
                    .padding(.horizontal, 20)
                    .frame(height: 48)
                    .background(Color("INPUT"))
                    .cornerRadius(32)
                
            }
            
        }
        
    }
}

struct InputField_Previews: PreviewProvider {
    static var previews: some View {
        InputField(label: "Email", placeholder: "Digite seu email", text: .constant("example@example.com"))
    }
}
