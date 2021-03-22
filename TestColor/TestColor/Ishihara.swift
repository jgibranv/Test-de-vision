//
//  Ishihara.swift
//  TestColor
//
//  Created by Karla Gonzalez on 22/03/21.
//


import SwiftUI

struct IshiharaView: View {
    
    @StateObject var media: MediaModel
    @State var answer: String = ""
    
    var body: some View {
        
        
        ZStack{
            Color("CocodrileTooth")
            VStack{
                VStack{
                    Text("Prueba Ishihara")
                        .font(.Gill(size:48))
                        .foregroundColor(Color("MidnightBlue"))
                        .padding(.top, 50)
                    
                }//VStack Titulo
                
                VStack {
                    ScrollView(.horizontal, showsIndicators: false){

                                HStack{

                                    ForEach(media.arrMovies){ movie in
           
                                                PictureCellView(media: movie)
                                        

                                    }

                                
                                }

                    }
                    
                } //VStack Imagenes

            }
 
        }//Zstack
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        IshiharaView(media:MediaModel())
    }
}
