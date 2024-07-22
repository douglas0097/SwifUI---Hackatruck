//
//  Modo01.swift
//  Navigation
//
//  Created by Turma02-5 on 15/07/24.
//

import SwiftUI

struct Modo01: View {
    var body: some View {
        ZStack{
            Color.principal
                .ignoresSafeArea()
            VStack{
                Text("Modo 1")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(Color.white)
                    .padding()
                Spacer()
                VStack{
                    Text("Nome: Juninho")
                        .foregroundStyle(Color.white)
                    
                    Text("Sobrenome: Portugal")
                        .foregroundStyle(Color.white)
                }
                .padding(.horizontal,60)
                .padding(.vertical,20)
                .background(.pink)
                .cornerRadius(7)

                
                Spacer()
            }
        }
    

    }
}

#Preview {
    Modo01()
}
