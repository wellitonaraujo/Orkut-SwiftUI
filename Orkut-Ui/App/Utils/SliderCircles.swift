//
//  SliderCircles.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 10/12/23.
//

import SwiftUI

struct SliderCircles: View {
    let itemCircleIndex: Int
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<3) { index in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(index == itemCircleIndex ? Color.pink.opacity(0.8) : Color.pink.opacity(0.4))
            }
        }
    }
}

struct SliderCirclesSignup: View {
    let itemCircleIndex: Int
    
    var body: some View {
        HStack(spacing: 5) {
            ForEach(0..<4) { index in
                Circle()
                    .frame(width: 8, height: 8)
                    .foregroundColor(index == itemCircleIndex ? Color.pink.opacity(0.8) : Color.pink.opacity(0.4))
            }
        }
    }
}

struct SliderCircles_Previews: PreviewProvider {
    static var previews: some View {
        SliderCircles(itemCircleIndex: 1)
    }
}
