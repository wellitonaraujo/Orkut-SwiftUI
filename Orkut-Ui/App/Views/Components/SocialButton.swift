//
//  SocialButton.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 07/12/23.
//

import SwiftUI

struct SocialButton: View {
    var img: String
    var title: String
    
    var body: some View {
        HStack {
            Image(img)
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)
            
            Text(title)
                .font(.system(size: 14, weight: .regular))
        }
        .frame(width: 116, height: 44)
        .background(Color("NEUTRAL-GRAY600"))
        .cornerRadius(10)
        .padding(.horizontal, 16)
    }
}

struct SocialButton_Previews: PreviewProvider {
    static var previews: some View {
        SocialButton(img: "apple", title: "Google")
    }
}
