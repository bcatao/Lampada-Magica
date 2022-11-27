//
//  ContentView.swift
//  Lampada Magica
//
//  Created by Bruno Catão on 26/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var ligado: Bool = false
    @State var valor: Double = 0
    
    
    var body: some View {
        VStack {
            Text("Lâmpada Mágica")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Image(systemName: "lightbulb")
                .font(.system(size:200))
            
            Spacer()
            
            VStack {
                    Toggle(isOn: $ligado){
                        Text(ligado ? "Lâmpada desligar" : "Lâmpada: ligar")
                }
                HStack{
                    Text("Potência:")
                    
                    Slider(value:
                            ligado ? $valor: .constant(0))
                    Text("\(ligado ? valor * 100 : 0.0,specifier: "%.0f")%")

                    }

                
                }
            }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(ligado ? .yellow.opacity(valor) : .white)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
