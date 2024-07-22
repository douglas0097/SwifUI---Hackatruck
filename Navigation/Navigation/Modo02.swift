//
//  Modo01.swift
//  Navigation
//
//  Created by Turma02-5 on 15/07/24.
//

import SwiftUI



struct Modo02: View {
    
    @State var name: String = ""

    var body: some View {
        ZStack{
            Color.principal
                .ignoresSafeArea()
            VStack{
                Text("Modo 2")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(Color.white)
                    .padding()
                Spacer()
                
                VStack{
                    TextField("Enter your name", text: $name)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.white)

                    Text("Bem-vindo, \(name)")
                        .foregroundStyle(Color.white)
                        .padding(.bottom)
                    
                    NavigationLink(destination: Modo02_02(name: name)){
                        Text("Acessar Tela")
                            .foregroundStyle(Color.white)
                            .padding(.horizontal,20)
                            .padding(.vertical,10)
                            .background(.blue.gradient)
                            .cornerRadius(15)
                    }
                }
                .padding(.vertical,20)
                .background(.pink)
                .cornerRadius(7)
                .padding(.horizontal,40)

                
                Spacer()
            }
        }
    

    }
}

#Preview {
    Modo02()
}
