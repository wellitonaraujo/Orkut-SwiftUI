//
//  NeedHelp.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 10/12/23.
//

import SwiftUI

struct NeedHelp: View {
    var title: String = ""
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(Color("NEUTRAL-GRAY100"))
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 95, height: 0.5)
                .background(Color("PRIMARY-LIGHT"))
                .padding(.top, -8)
            
        }
        .padding(.top, 30)
    }
}

struct NeedHelp_Previews: PreviewProvider {
    static var previews: some View {
        NeedHelp()
    }
}
