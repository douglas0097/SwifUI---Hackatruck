//
//  ContentView.swift
//  Spotify
//
//  Created by Turma02-5 on 16/07/24.
//

import SwiftUI

struct ContentView: View {
    
    var arrayMusicas = [
        Musica(id: 1, nome: "Creep", artista: "Radiohead", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYjsmcsC9fjDMfkkUQPdObvH56Af-gtg7Vxw&s"),
        Musica(id: 2, nome: "Zóio De Lula", artista: "Charlie Brown Jr.", capa: "https://i.scdn.co/image/ab67616d0000b2733f21ce6864af207df9ea058c"),
        Musica(id:3, nome: "My Way - 2008 Remastered", artista: "Frank Sinatra", capa: "https://lastfm.freetls.fastly.net/i/u/ar0/333ec2e2c8f3b5fcabb4ea746833deab.jpg"),
        Musica(id:4, nome:"LUNCH", artista: "Billie Eilish",capa: "https://indiehoy.com/wp-content/uploads/2024/04/billie-eilish-nuevo-disco-.jpg"),
        Musica(id:5, nome: "Rock with You - Single Version", artista: "Michael Jackson", capa: "https://i.scdn.co/image/ab67616d0000b2737027294551db4fda68b5ddac")
    ]
    
    var arraySujeridos = [
        Sugerido(id: 1, nome: "Top Brasil", capa: "https://pbs.twimg.com/media/EhkA016XcAQblv7.jpg"),
        Sugerido(id: 2, nome: "Gigantes do Rap Nacional", capa: "https://i.scdn.co/image/ab67706f00000002545050eaec5f618488a33b44")
    ]
    
    
    
    var arraySugeridos = ["https://d1csarkz8obe9u.cloudfront.net/posterpreviews/spotify-style-illustration-album-art-2020-2-design-template-a62b54e646ff4680a0af18d6e86da896_screen.jpg?ts=1600257820"]
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.brown, .black]), startPoint: .top, endPoint: .center)
                    .ignoresSafeArea()
                ScrollView{
                    
                    VStack{
                        AsyncImage(url: URL(string: "https://s2-g1.glbimg.com/tp136FYgBHiDIYwwfF60O1on-k4=/0x0:1474x1500/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/y/4/Sur1pxRjq8fSq991OBNQ/91ov7fjzzrl.-sl1500-.jpg"), scale: 5.5)
                            .padding(20)
                        VStack{
                            
                            HStack{
                                Text("HackaSong")
                                    .foregroundStyle(Color.white)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .bold()
                                    .padding(.leading,20)
                                Spacer()
                                
                            }
                            HStack{
                                AsyncImage(url: URL(string: "https://s2-g1.glbimg.com/tp136FYgBHiDIYwwfF60O1on-k4=/0x0:1474x1500/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/y/4/Sur1pxRjq8fSq991OBNQ/91ov7fjzzrl.-sl1500-.jpg"), scale: 30)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                
                                Text("HackaSong")
                                    .foregroundStyle(Color.white)
                                Spacer()
                            }
                            .padding(.leading,20)
                            .padding(.bottom,30)
                        }
                        
                        ForEach(arrayMusicas){ musica in
                            HStack{
                                NavigationLink(destination: Play(receber: musica)){
                                    AsyncImage(url: URL(string: musica.capa)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 50, height: 50)
                                    
                                    
                                    VStack(alignment:.leading){
                                        Text(musica.nome)
                                            .foregroundStyle(Color.white)
                                            .bold()
                                        Text(musica.artista)
                                            .foregroundStyle(Color.white)
                                            .font(.system(size: 10))
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis").foregroundColor(.white)
                                    
                                }
                                .padding(.horizontal)
                            }
                        }
                    }
                    Spacer()
                    
                    VStack{
                        HStack{
                            Text("Sugeridos")
                                .foregroundStyle(Color.white)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                                .padding(.top,50)
                                .padding(.leading,20)
                            Spacer()
                        }
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(arraySujeridos){musica in
                                    AsyncImage(url: URL(string: musica.capa)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 120, height: 120)
                                }
                            }
                            .padding(.leading,20)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
