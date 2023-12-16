//
//  ImageProfile.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 15/12/23.
//

import SwiftUI

struct ImageProfile: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: 35, height: 35)
            .cornerRadius(35)
           
        
            .overlay(
                RoundedRectangle(cornerRadius: 35)
                    .stroke(
                        Color(.white),
                        lineWidth: 2
                )
        )
        .clipShape(RoundedRectangle(cornerRadius: 35))
       
    }
}

struct ImageProfile_Previews: PreviewProvider {
    static var previews: some View {
        ImageProfile(image: "story7")
    }
}
