//
//  SignInFooter.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 14/12/23.
//

import SwiftUI

struct SignInFooter: View {
    var body: some View {
        VStack {
            Text("Ainda não possui conta?")
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color("NEUTRAL-GRAY400"))
                .padding(.top, 50)
            
            NavigationLink(destination: SignUpView()) {
                Text("Criar conta")
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(Color("NEUTRAL-GRAY100"))
                    .padding(.top, 1)

            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 72, height: 0.5)
                .background(Color("PRIMARY-LIGHT"))
                .padding(.top, -8)
            }
    }
}

struct SignInFooter_Previews: PreviewProvider {
    static var previews: some View {
        SignInFooter()
    }
}
