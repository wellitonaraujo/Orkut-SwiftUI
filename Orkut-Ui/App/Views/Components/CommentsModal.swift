//
//  CommentsModal.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 16/12/23.
//

import SwiftUI

struct CommentsModal: View {
    @Binding var isShowing: Bool
    @State var curHeight: CGFloat = 400
    
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 400

    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowing {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                
//                VStack {
//                    Text("AWEE")
//                }
//                .frame(height: 500)
//                .frame(maxWidth: .infinity)
//                .background(Color.white)
//                .cornerRadius(33)
            }

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        
    }
}

struct CommentsModal_Previews: PreviewProvider {
    static var previews: some View {
        CommentsModal(isShowing: .constant(true))
    }
}

