//  ContentView.swift
//  Aula02
//
//  Created by Turma02-5 on 11/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    @State private var name: String = ""

    var body: some View {
       
        ZStack {
            Image("caminhao")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.5)
                .blur(radius: 3)
            VStack{
                Text("Bem vindo! \(name)")
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)

                Spacer()
                Image("truck")
                    .resizable()
                    .frame(width: 200,height: 100)
                    .shadow(radius: 30)
                Image("logo")
                    .resizable()
                    .frame(width: 200,height: 100)
                    .shadow(radius:20)
                    .overlay(Image("logo").resizable().frame(width: 210,height: 110).opacity(0.4))
                Spacer()
                Button("Entrar"){
                    showingAlert = true
                }
                .alert(isPresented:$showingAlert) {
                    Alert(
                        title: Text("ALERTA"),
                        message: Text("Voce irá iniciar o desafio da aula agora"),
                        dismissButton:.default(Text("Vamos lá!"))
                    )
                }
                    .buttonStyle(.bordered)
                    .controlSize(/*@START_MENU_TOKEN@*/.regular/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
