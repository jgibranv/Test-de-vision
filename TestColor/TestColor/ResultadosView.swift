//
//  ResultadosView.swift
//  TestColor
//
//  Created by María Paula Flores Canales on 22/03/21.
//

import SwiftUI

struct ResultadosView: View {
    
    @Binding var sP1: Int
    @Binding var sP2: Int
    @Binding var sP3: Int
    @Binding var sP4: Int
    @Binding var sP5: Int
    @State var resultado: Int = 0
    
    var body: some View {
     
        Text("Diagnóstico")
        
    }
}

struct ResultadosView_Previews: PreviewProvider {
    static var previews: some View {
        ResultadosView(sP1: .constant(0), sP2: .constant(0), sP3: .constant(0), sP4: .constant(0), sP5: .constant(0))
    }
}
