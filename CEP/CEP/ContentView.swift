//
//  ContentView.swift
//  CEP
//
//  Created by Turma02-5 on 19/07/24.
//

import SwiftUI


struct ContentView: View {
    
    
    @StateObject var lugar = ViewModel()
    
    @State var cepDigitado: String = ""
    @State var lugarBuscado: String = ""
    
    var body: some View {
        ZStack {
            Color.principal
                .ignoresSafeArea()
            LinearGradient(gradient: Gradient(colors: [.principal, .black]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                Text("CEP")
                    .font(.custom("Copperplate", size: 170))       .padding()
                    .foregroundColor(.white)
                
                VStack{
                    
                    TextField("Digite o CEP", text: $cepDigitado)
                        .multilineTextAlignment(.center)
                        .padding(50)
                        .textFieldStyle(.roundedBorder)
                    
                    Button(action:{
                        lugarBuscado = cepDigitado
                        lugar.fetch(lugar: lugarBuscado)
                        print(lugarBuscado)
                        
                    }, label:{
                        Text("Buscar")
                            .foregroundStyle(Color.white)
                            .padding(.horizontal,60)
                            .padding(.vertical,20)
                            .background(.orange.gradient)
                            .cornerRadius(30)
                    }
                    )
                    
                    VStack{
                        Text(lugar.pCEP)
                        Text("\(lugar.pCity)-\(lugar.pState)")
                        Text(lugar.pNeighborhood)
                        Text(lugar.pStreet)
                    }
                    .padding()
                    .foregroundColor(.white)
                }
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}
