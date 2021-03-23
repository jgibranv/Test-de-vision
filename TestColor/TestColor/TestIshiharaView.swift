//
//  TestIshiharaView.swift
//  TestColor
//
//  Created by María Paula Flores Canales on 22/03/21.
//

import SwiftUI

struct TestIshiharaView: View {
    @State var verDetalle1: Bool = false
    @State var verDetalle2: Bool = false
    @State var verDetalle3: Bool = false
    @State var verDetalle4: Bool = false
    @State var verDetalle5: Bool = false
    @State var verResultados: Bool = false

    
    @State var sP1: Int = 0
    @State var sP2: Int = 0
    @State var sP3: Int = 0
    @State var sP4: Int = 0
    @State var sP5: Int = 0


    var body: some View {
        ZStack{
            VStack{
                VStack{
                    ZStack{
                        Color("DeepCove")
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        VStack{
                            Text("Test Ishihara")
                                .font(.custom("Anton-Regular",size:30))
                                .foregroundColor(Color("LYNX WHITE"))
                            //Spacer()
                        }
                    }
                    
                }
                
                HStack{
                    Button(action: {self.verDetalle1.toggle()}, label: {
                        Image("Ishihara1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 135, height: 135, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                    .sheet(isPresented: $verDetalle1, content: {
                        DetalleView1()
                    })
                    Form{
                        Text("¿Qué número es?")
                        TextField("Value", value: $sP1, formatter: NumberFormatter())
                            
                    }
                    
                }
                HStack{
                    Button(action: {self.verDetalle2.toggle()}, label: {
                        Image("Ishihara2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 135, height: 135, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                    .sheet(isPresented: $verDetalle2, content: {
                        DetalleView2()
                    })
                    Form{
                        Text("¿Qué número es?")
                        TextField("Value", value: $sP2, formatter: NumberFormatter())
                            
                    }
                }
                
                HStack{
                    Button(action: {self.verDetalle3.toggle()}, label: {
                        Image("Ishihara3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 135, height: 135, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                    .sheet(isPresented: $verDetalle3, content: {
                        DetalleView3()
                    })
                    Form{
                        Text("¿Qué número es?")
                        TextField("Value", value: $sP3, formatter: NumberFormatter())
                            
                    }
                }
                
                HStack{
                    Button(action: {self.verDetalle4.toggle()}, label: {
                        Image("Ishihara4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 135, height: 135, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                    .sheet(isPresented: $verDetalle4, content: {
                        DetalleView4()
                    })
                    Form{
                        Text("¿Qué número es?")
                        TextField("Value", value: $sP4, formatter: NumberFormatter())
                            
                    }
                }
                
                HStack{
                    Button(action: {self.verDetalle5.toggle()}, label: {
                        Image("Ishihara5")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .frame(width: 135, height: 135, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    })
                    .sheet(isPresented: $verDetalle5, content: {
                        DetalleView5()
                    })
                    Form{
                        Text("¿Qué número es?")
                        TextField("Value", value: $sP5, formatter: NumberFormatter())
                            
                    }
                }
                Button(action: {self.verResultados.toggle()}, label: {
                    HStack{
                        Image(systemName: "pencil.circle")
                        Text("Realizar Test")
                    }
                    .padding(10)
                    .background(Color("DeepCove"))
                    .foregroundColor(Color("LYNX WHITE"))
                    .cornerRadius(20)
                })
                .sheet(isPresented: $verResultados, content: {
                    ResultadosView(sP1: $sP1, sP2: $sP2, sP3: $sP3, sP4: $sP4, sP5: $sP5)
                })
                
            }
        }
    }
}

struct TestIshiharaView_Previews: PreviewProvider {
    static var previews: some View {
        TestIshiharaView()
    }
}
