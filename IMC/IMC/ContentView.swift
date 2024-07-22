//  SwiftUIView.swift
//  Aula02
//
//  Created by Turma02-5 on 11/07/24.
//

import SwiftUI


struct ContentView: View {
        
    @State private var peso: String = ""
    @State private var altura: String = ""
    @State private var IMC: Double?
    @State private var resultado: String = ""
    @State private var cor: Color = .gray

    func calcularIMC (_ pPeso : String, _ pAaltura:String) -> Double{
        
        IMC = (Double(peso) ?? 0) / ((Double(altura) ?? 0) * (Double(altura) ?? 0))
        return IMC!
  }
    
    func resultadoIMC (_ pIMC: Double) -> String{
        
        if(IMC! < 18.50){
            resultado = "Baixo Peso"
            cor = .baixoPeso
        }else if(IMC! >= 18.50 && IMC! <= 24.99){
            resultado = "Normal"
            cor = .normal
        }else if(IMC! >= 25.00 && IMC! <= 29.99){
            resultado = "Sobrepeso"
            cor = .sobrePeso
        }else if(IMC! > 30.00){
            resultado = "Obesidade"
            cor = .obesidade
        }
        return resultado
    }

    var body: some View {
        ZStack{
            cor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            VStack{
                Text("Calculadora de IMC")
                    .font(.largeTitle)
                    .bold()
                TextField("Peso",text: $peso)
                    .padding(3)
                    .background(.white)
                    .frame(width: 300)
                    .cornerRadius(10)
                TextField("Altura",text: $altura)
                    .padding(3)
                    .background(.white)
                    .frame(width: 300)
                    .cornerRadius(10)
                Button("Calcular"){
                    IMC = calcularIMC(peso, altura)
                    resultado = resultadoIMC(IMC!)
                }
                    .buttonStyle(.borderedProminent)
                    .padding(20)
                
                Text("Categoria:")
                    .font(.largeTitle)
                Text("\(resultado)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()

                Spacer()

                Image("tabela-IMC")
                    .resizable()
                    .frame(height: 190)
                    .shadow(radius: 10)

            }
            .multilineTextAlignment(.center)
            
        }
        
    }
}

#Preview {
    ContentView()
}
