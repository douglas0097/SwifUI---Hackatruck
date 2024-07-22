//
//  ContentView.swift
//  Navigation
//
//  Created by Turma02-5 on 15/07/24.
//

import SwiftUI
struct ContentView: View {
    
    @State var showModel = false
    
    var body: some View {
        NavigationStack{
        ZStack {
            Color.principal
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 280)
                    .shadow(color:Color.white,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Spacer()
                
               
                NavigationLink(destination: Modo01()){
                    Text("Modo 01")
                        .foregroundStyle(Color.white)
                        .padding(.horizontal,60)
                        .padding(.vertical,20)
                        .background(.pink.gradient)
                }
                .cornerRadius(7)

                NavigationLink(destination: Modo02()){
                    Text("Modo 02")
                        .foregroundStyle(Color.white)
                        .padding(.horizontal,60)
                        .padding(.vertical,20)
                        .background(.pink.gradient)

                }
                .cornerRadius(7)

                Button(action:{showModel = true}, label:{
                    Text("Modo 03")
                        .foregroundStyle(Color.white)
                        .padding(.horizontal,60)
                        .padding(.vertical,20)
                        .background(.pink.gradient)
                })
                     
                .cornerRadius(7)

                Spacer()
                }
            .sheet(isPresented: $showModel){
                ModalView()
            }
            }
        }
    }
    struct ModalView: View{
        var body: some View{
            ZStack{
                Color.principal
                    .ignoresSafeArea()
                
                VStack{
                    Text("SheetView")
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
}

#Preview {
    ContentView()
}
