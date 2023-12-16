//
//  ButtonLogin.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 07/12/23.
//

import SwiftUI

struct PrimaryButton: View {
    var title: String
    @State private var isLoading = false
    
    var body: some View {
        Button(action: {
            isLoading.toggle()

            }) {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .foregroundColor(.white)
                } else {
                    Text(title)
                        .foregroundColor(.white)
                }
            }
            .padding(.horizontal, 20)
            .frame(width: 311, height: 48)
            .background(Color("PRIMARY-DEFAULT"))
            .cornerRadius(32)
            .padding(.top, 25)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Title")
    }
}
