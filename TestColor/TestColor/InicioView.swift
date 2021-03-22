//
//  ContentView.swift
//  TestColor
//
//  Created by user189629 on 3/19/21.
//

import SwiftUI

struct InicioView: View {
    
    var arrOpciones = ["Realizar Examen"]
    @State var verIshihara: Bool = false

    
    var body: some View {
                
        NavigationView {
            ZStack{
                VStack{
                    Color("DeepCove")
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Spacer(minLength: 755)
                    Color(.white)
                }
                            
                VStack{
                    Text("Prueba de Daltonismo")
                        .font(.custom("Anton-Regular",size:40))
                        .foregroundColor(Color("LYNX WHITE"))
                        .padding(.bottom, -1)
                    
                    Image("fotos")
                        .resizable()
                        .frame(width: 415, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.bottom, 750)
                }
                VStack{
                    NavigationLink(destination: TestIshiharaView()) {
                        HStack{
                            Image(systemName: "pencil.circle")
                            Text("          Realizar Test          ")
                        }
                        .padding(10)
                        .font(.custom("Anton-Regular",size:25))
                        .background(Color("LYNX WHITE"))
                        .foregroundColor(Color("DeepCove"))
                        .cornerRadius(20)
                        .padding(.bottom, 50)
                    }
                            
                    NavigationLink(destination: TestIshiharaView()) {
                        HStack{
                            Image(systemName: "pencil.circle")
                            Text("        Más información       ")
                        }
                        .font(.custom("Anton-Regular",size:25))
                        .background(Color("LYNX WHITE"))
                        .foregroundColor(Color("DeepCove"))
                        .cornerRadius(20)
                        .padding(.bottom, 200)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InicioView()
    }
}

