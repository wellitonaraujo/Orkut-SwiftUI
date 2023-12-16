//
//  BackButtonView.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 10/12/23.
//

import SwiftUI

struct BackButtonView: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "chevron.left")
            .foregroundColor(Color("PRIMARY-DEFAULT"))
        }
    }
}

