//
//  Modo01.swift
//  Navigation
//
//  Created by Turma02-5 on 15/07/24.
//

import SwiftUI

struct Modo02_02: View {
    
    var name: String = ""
    
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
                    Text("Volte,")
                        .foregroundStyle(Color.white)
                    
                    Text("\(name)!!!")
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
    Modo02_02()
}
