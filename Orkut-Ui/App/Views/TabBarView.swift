//
//  TabBarView.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 15/12/23.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            Text("Buscas")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    
                }
            
            Text("Buscas")
                .tabItem {
                    Image(systemName: "plus")
                    
                }
            
            Text("Buscas")
                .tabItem {
                    Image(systemName: "message.badge.rtl")
                }
            
            Text("Buscas")
                .tabItem {
                    Image(systemName: "bell.badge")

                }
        }.tint(Color("PRIMARY-DEFAULT"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
