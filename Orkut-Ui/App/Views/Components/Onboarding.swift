//
//  Onboarding.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 07/12/23.
//

import SwiftUI

struct Onboarding<Destination: View>: View {
    @State private var destinationView: AnyView?
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        

    var img: String
    var circle: String
    var title: String
    var subTitle: String
    var imgNext: String
    var destination: Destination
    
    init(img: String, circle: String, title: String, subTitle: String, imgNext: String, destination: Destination) {
            self.img = img
            self.circle = circle
            self.title = title
            self.subTitle = subTitle
            self.imgNext = imgNext
            self.destination = destination
        }
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image(img)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    
                    Image(circle)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 350)
                        .padding(.bottom, -40)
                }
                
                Text(title)
                    .font(.system(size: 24, weight: .bold))
                    .padding(.top, 50)
                
                Text(subTitle)
                    .padding(.top, 10)
                    .font(.system(size: 16, weight: .thin))
                
                Spacer()
                
                NavigationLink(destination: destination) {
                    NextButton()
                }
            }
           
        }
        .padding(30)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
    
    private var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "arrow.left")
                    .foregroundColor(Color("PRIMARY-DEFAULT"))
            }
        }
    }
}


struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding(img: "onboarding-circle", circle: "onboarding01", title: "Olha quem voltou!", subTitle: "O Orkut está de volta! Melhor e moderno", imgNext: "btn-next", destination: SignUpView())
    }
}

