//
//  PictureCell.swift
//  TestColor
//
//  Created by Karla Gonzalez on 22/03/21.
//

import SwiftUI

struct PictureCellView: View {
    var media: Media
    @State var answer: String = ""
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ZStack{
                
                    VStack{
                        
                        Image(media.sNameFoto)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 374)
                            .cornerRadius(40)
                            .overlay(
                                ZStack{
                                    RoundedRectangle(cornerRadius: 40)
                                        .stroke(Color("MidnightBlue"), style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))

                                    
                                }
                            )//overlay
                            .padding(.horizontal,20)
                            .padding(.top,0)
                        
                        Section{
                            Text("¿Qué número es?:")
                            TextField("Enter answer...", text: $answer)
                                .font(.Gulim(size: 18))
                                .multilineTextAlignment(.center)
                        }
                    }//VStack Imagen
                    
                }//ZStack

                .foregroundColor(Color("MidnightBlue"))
            }//VStack Principal
        }//Scroll
    }
}

struct MediaCellView_Previews: PreviewProvider {
    static var previews: some View {
        PictureCellView(media: Media.defaultMedia)
    }
}
