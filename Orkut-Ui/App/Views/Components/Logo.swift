//
//  Logo.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 14/12/23.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 100, height: 30)
            .scaledToFit()
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
