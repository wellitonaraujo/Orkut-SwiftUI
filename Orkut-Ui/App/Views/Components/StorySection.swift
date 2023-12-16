//
//  StorySection.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 15/12/23.
//

import SwiftUI

struct StorySection: View {
    var stories = storiesData
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(stories, id: \.imageName) { story in
                        VStack {
                            ImageStory(image: story.imageName)
                            Text(story.username)
                                .font(.system(size: 12))
                        }
                    }
                }.padding(.leading, 16)
            }
            Divider()
            .padding(.top, 15)
        } 
    }
}

struct StorySection_Previews: PreviewProvider {
    static var previews: some View {
        StorySection()
    }
}
