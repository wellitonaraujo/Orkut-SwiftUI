//
//  BackButtonViewModel.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 10/12/23.
//

import Foundation
import SwiftUI

class BackButtonViewModel: ObservableObject {
    var presentationMode: Binding<PresentationMode>?

    var backButton: some View {
        BackButtonView(action: {
            self.presentationMode?.wrappedValue.dismiss()
        })
    }
}

