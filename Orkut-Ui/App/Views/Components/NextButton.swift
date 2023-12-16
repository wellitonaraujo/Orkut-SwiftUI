//
//  NextButton.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 11/12/23.
//

import SwiftUI

struct NextButton: View {
    var body: some View {
        Image("btn-next")
            .resizable()
            .scaledToFit()
            .frame(width: 60, height: 60)
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton()
    }
}
