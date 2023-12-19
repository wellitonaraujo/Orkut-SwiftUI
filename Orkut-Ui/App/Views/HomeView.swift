//
//  HomeView.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 14/12/23.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationStack {
            VStack {
                Header()
                ScrollView(showsIndicators: false) {
                    StorySection()
                    
                    ForEach(0 ..< 5) { item in
                        FeedItem(
                            imageProfile: "odeioacordarcedo",
                            title: "Eu odeio segunda feira",
                            type: "Comunidade")
                    } 
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
