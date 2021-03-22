//
//  MediaModel.swift
//  TestColor
//
//  Created by Karla Gonzalez on 22/03/21.
//

import SwiftUI

class MediaModel: ObservableObject{
    
    @Published var arrMovies = [Media]()
    @Published var arrSeries = [Media]()
    
    init(){
        LoadInfo()
    }
    
    func LoadInfo(){
        var media: Media
        
                media = Media(sNameFoto: "2", iNumber: 2)
                arrMovies.append(media)
        
                media = Media(sNameFoto: "3", iNumber: 3)
                arrMovies.append(media)
                
                media = Media(sNameFoto: "5.1", iNumber: 5)
                arrMovies.append(media)

                media = Media(sNameFoto: "5", iNumber: 5)
                arrMovies.append(media)
                media = Media(sNameFoto: "6.1", iNumber: 6)
                arrMovies.append(media)

                media = Media(sNameFoto: "6", iNumber: 6)
                arrMovies.append(media)
                media = Media(sNameFoto: "7", iNumber: 7)
                arrMovies.append(media)

                media = Media(sNameFoto: "8", iNumber: 8)
                arrMovies.append(media)
                
                media = Media(sNameFoto: "12", iNumber: 12)
                arrMovies.append(media)

                media = Media(sNameFoto: "15", iNumber: 15)
                arrMovies.append(media)
                
                media = Media(sNameFoto: "16", iNumber: 16)
                arrMovies.append(media)

                media = Media(sNameFoto: "26", iNumber: 26)
                arrMovies.append(media)
                
                media = Media(sNameFoto: "29", iNumber: 29)
                arrMovies.append(media)

                media = Media(sNameFoto: "35", iNumber: 35)
                arrMovies.append(media)
                
                media = Media(sNameFoto: "42", iNumber: 42)
                arrMovies.append(media)

                media = Media(sNameFoto: "57", iNumber: 57)
                arrMovies.append(media)
                
                media = Media(sNameFoto: "74", iNumber: 74)
                arrMovies.append(media)

                media = Media(sNameFoto: "75", iNumber: 75)
                arrMovies.append(media)
                
                media = Media(sNameFoto: "96", iNumber: 96)
                arrMovies.append(media)

                media = Media(sNameFoto: "97", iNumber: 97)
                arrMovies.append(media)
        
        
        

 
    }
}
