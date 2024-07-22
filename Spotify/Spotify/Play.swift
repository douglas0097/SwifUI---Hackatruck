//
//  Play.swift
//  Spotify
//
//  Created by Turma02-5 on 17/07/24.
//

import SwiftUI

struct Play: View {
    @State var receber : Musica
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.brown, .black]), startPoint: .top, endPoint: .center)
                .ignoresSafeArea()
            
            
            VStack{
                VStack{
                    AsyncImage(url: URL(string: receber.capa)) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 200, height: 200)
                    Text(receber.nome)
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                        .bold()
                        .padding(.bottom,2)
                    Text(receber.artista)
                        .foregroundStyle(Color.white)
                        .font(.system(size: 15))

                }
                .padding(15)
                HStack{
                    Image(systemName: "shuffle")
                        .font(.system(size: 20))
                    
                        .opacity(0.5)
                    
                    Image(systemName: "backward.end.fill")
                        .font(.system(size: 20))
                    
                    Image(systemName: "play.fill")
                        .font(.system(size: 40))
                    
                    Image(systemName: "forward.end.fill")
                        .font(.system(size: 20))
                    
                    Image(systemName: "repeat")
                        .font(.system(size: 20))
                    
                        .opacity(0.5)
                }
                .foregroundColor(.white)
                
            }
        }
    }
}

#Preview {
    Play(receber: Musica(id: 0, nome: "TESTE", artista: "TESTE", capa: ""))
}
