//
//  ImageStory.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 15/12/23.
//

import SwiftUI

struct ImageStory: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: 75, height: 75)
            .cornerRadius(75)
            .padding(6)
            .overlay(
                RoundedRectangle(cornerRadius: 75)
                    .stroke(
                        LinearGradient(gradient: Gradient(colors: [Color("PRIMARY-LIGHT"), Color("PRIMARY-DARK")]), startPoint: .leading, endPoint: .trailing),
                        lineWidth: 6
                    )
            )
            .clipShape(RoundedRectangle(cornerRadius: 75))
            .padding(.trailing, 10)
    }
}

struct ImageStory_Previews: PreviewProvider {
    static var previews: some View {
        ImageStory(image: "story3")
    }
}
