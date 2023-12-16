//
//  SignUpHeader.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 10/12/23.
//

import SwiftUI

struct SignUpHeader: View {
    var body: some View {
        VStack {
            Text("Cadastro")
                .font(.system(size: 24, weight: .bold))
                .padding(.bottom, 10)
            
            Text("Preencha os dados a baixo")
                .font(.system(size: 16, weight: .light))
                .padding(.bottom, 1)
            Text("👇")
        }
    }
}

struct SignUpHeader_Previews: PreviewProvider {
    static var previews: some View {
        SignUpHeader()
    }
}
