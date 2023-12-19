//
//  StorySection.swift
//  Orkut-Ui
//
//  Created by Welliton da Conceicao de Araujo on 15/12/23.
//

import SwiftUI

struct StorySection: View {
    var stories = storiesData
    
    @State var isImageTapped = false
    @State var selectedImage = ""
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(stories, id: \.imageName) { story in
                        VStack {
                            ImageStory(image: story.imageName)
                                .onTapGesture {
                                    selectedImage = story.imageName
                                    isImageTapped = true
                                }
                            Text(story.username)
                                .font(.system(size: 12))
                        }
                    }
                }.padding(.leading, 16)
            }
            Divider()
            .padding(.top, 15)
        }
        .fullScreenCover(isPresented: $isImageTapped) {
            if let imageURL = Bundle.main.url(forResource: selectedImage, withExtension: "png") {
               
                Image(uiImage: UIImage(contentsOfFile: imageURL.path)!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        isImageTapped = false
                    }
                
                } else {
                    
                    Text("Erro ao carregar a imagem")
                        .foregroundColor(.red)
            }
        }
    }
}

struct StorySection_Previews: PreviewProvider {
    static var previews: some View {
        StorySection()
    }
}
