//
//  FeedItem.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 15/12/23.
//

import SwiftUI

struct FeedItem: View {
    @State private var isLikeTapped = false

    var imageProfile: String
    var title: String
    var type: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Image(imageProfile)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .cornerRadius(50)
                
                VStack (alignment: .leading){
                    Text(title)
                        .font(.system(size: 14, weight: .bold))
            
                    Text(type)
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                Image(systemName: "ellipsis")

                   
            }.padding()
    
            Image("community1")
                .resizable()
                .scaledToFit()
            
            HStack{
                HStack(spacing: 30) {
                    if isLikeTapped {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.red)
                            .onTapGesture {
                                isLikeTapped.toggle()
                            }
                    } else {
                        Image(systemName: "heart")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .onTapGesture {
                                isLikeTapped.toggle()
                        }
                    }
                    
                    Image(systemName: "message")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                }
                
                Spacer()
                
                Image(systemName: "bookmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                
            }.padding(.horizontal, 16)
            
            Text("Infelizmente segunda-feira está cheganda e todo mundo odeia 😡")
                .font(.system(size: 14, weight: .regular))
                .padding(.horizontal, 16)
        }
    }
}

struct FeedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeedItem(imageProfile: "odeioacordarcedo", title: "Eu odeio segunda feira", type: "Comunidade")
    }
}
