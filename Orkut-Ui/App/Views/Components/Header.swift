//
//  Header.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 15/12/23.
//

import SwiftUI

struct Header: View {
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "text.justify.left")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(.white)
                .padding(.leading, 16)
            
            TextField("", text: $searchText)
                .padding(10)
                .background(Color.white.opacity(0.9))
                .cornerRadius(7)
                .foregroundColor(Color("PRIMARY-DEFAULT"))
                .padding(.horizontal)
                .overlay(
                    
            HStack {
                Spacer()
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(.trailing, 30)
                    }
                )
            
            ImageProfile(image: "story7")
                .padding()
            
        }
        .background(Color("PRIMARY-LIGHT"))
        .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 2)
        .padding(.bottom, 10)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
