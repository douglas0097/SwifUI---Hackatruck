//  SwiftUIView.swift
//  Aula01
//
//  Created by Turma02-5 on 10/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            VStack{
                Text("Username")
            }
            .padding(.bottom,20)
            HStack (spacing:5){
                Circle()
                    .fill(.gray.gradient)
                    .frame(width: 120,height: 120)
                    .padding(2)
                    .overlay(Circle().stroke(Color.green, lineWidth: 2.5))
                    .overlay(alignment: .bottomTrailing) {
                        Image(systemName: "plus")
                            .resizable()
                            .padding(11)
                            .foregroundColor(.white)
                            .frame(width: 40,height: 40)
                            .background(.blue)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }
                VStack{
                    HStack{
                        VStack(){
                            Text("8")
                                .bold()
                            Text("Post")
                                .font(.system(size: 13))
                        }
                        .frame(width:80,height: 50)
                        VStack{
                            Text("12k")
                                .bold()
                            Text("Seguidores")
                                .font(.system(size: 13))
                        }
                        .frame(width:80,height: 50)
                        VStack{
                            Text("2k")
                                .bold()
                            Text("Seguindo")
                                .font(.system(size: 13))
                        }
                        .frame(width:80,height: 50)
                    }
                    HStack{
                        Text("Editar Perfil")
                            .background(Rectangle().fill(.gray.gradient)
                                .frame(width: 215,height: 30)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            )
                        
                    }.padding(.top, 10)
                }
            }
            VStack(alignment: .leading){
                Text("Nome Sobrenome")
                    .bold()
                Text("Lorem ipsin hahaahh")
            }
            .padding()
        }
        .padding(.leading,10)
        
        HStack{
            HStack(spacing:108)
            {
                Image(systemName: "square.grid.3x3.middleleft.fill")
                    .resizable()
                    .frame(width: 23,height: 23)
                    .foregroundColor(Color.black.opacity(0.7))
                
                Image(systemName: "note")
                    .resizable()
                    .frame(width: 23,height: 23)
                    .foregroundColor(Color.black.opacity(0.7))
               
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 21,height: 23)
                    .foregroundColor(Color.black.opacity(0.7))

       
            }
            .padding(.top,10)
            
        }
        VStack{
            ForEach(0..<3, id: \.self){ _ in
                HStack{
                    ForEach(0..<3,id: \.self){ _ in
                        Rectangle()
                            .frame(width: 115,height: 120)
                            .foregroundColor(.gray)
                            .padding(1)
                    }
                }
            }
        }
        .padding(6)
        
        
    }
}

#Preview {
    ContentView()
}
