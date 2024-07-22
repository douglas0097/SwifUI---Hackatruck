//
//  ContentView.swift
//  Map
//
//  Created by Turma02-5 on 17/07/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var showModel = false

    @State private var posicao = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -7.2322626, longitude: -35.9128817),
            span:  MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
            
        )
    )
    
    @State private var aux: Mapa = Mapa(name: "NOME", coordenada: CLLocationCoordinate2D(latitude: -7.2322626, longitude: -35.9128817), bandeira: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", descricao: "DESCRICAO")
    
    
    @State private var localizacao = ""
    
    var arrayMapas = [
        Mapa(name: "Brasil", coordenada: CLLocationCoordinate2D(latitude: -14.2229287, longitude: -56.5590033), bandeira: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", descricao:"O Brasil, um vasto país sul-americano, estende-se da Bacia Amazônica, no norte, até os vinhedos e as gigantescas Cataratas do Iguaçu, no sul. O Rio de Janeiro, simbolizado pela sua estátua de 38 metros de altura do Cristo Redentor, situada no topo do Corcovado, é famoso pelas movimentadas praias de Copacabana e Ipanema, bem como pelo imenso e animado Carnaval, com desfiles de carros alegóricos, fantasias extravagantes e samba."),
        Mapa(name: "Canadá", coordenada: CLLocationCoordinate2D(latitude: 59.4874471, longitude: -114.3261694), bandeira: "https://s3.static.brasilescola.uol.com.br/be/2022/10/bandeira-do-canada.jpg", descricao:"O Canadá é um país norte-americano que se estende desde os EUA, no sul, até o Círculo Polar Ártico, no norte. Entre suas grandes cidades estão a gigantesca Toronto; Vancouver, centro cinematográfico da costa oeste; Montreal e Québec City, que falam francês; e a capital, Ottawa. As vastas regiões de natureza selvagem do Canadá compreendem o Parque Nacional de Banff, repleto de lagos nas Montanhas Rochosas. Abriga também as Cataratas do Niágara, um famoso conjunto de enormes cachoeiras."),
        
    ]
    
    var body: some View {
        ZStack {
            Map(position: $posicao){
                ForEach(arrayMapas){ anotacao in
                    Annotation(anotacao.name, coordinate: anotacao.coordenada) {
                        Image(systemName: "flag.checkered.circle.fill")
                            .font(.system(size: 30))
                            .onTapGesture {
                                showModel = true
                            }
                            .sheet(isPresented: $showModel){
                                ZStack{
                                    VStack{
                                        Text(aux.name)
                                            .font(.title)
                                            .bold()
                                            .padding(10)
                                         
                                        AsyncImage(url: URL(string: aux.bandeira)) { image in
                                            image.resizable()
                                                .scaledToFit()
                                                .padding(10)
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        
                                        Spacer()
                                        
                                        VStack{
                                            Text(aux.descricao)
                                        }
                                        .padding(.horizontal,20)
                                        Spacer()
                                    }
                                }
                            }
                    }
                }
            }
                
            VStack{
                VStack{
                    Text("World Map")
                        .font(.title)
                        .bold()
                        .padding(.bottom,10)
                    Text(localizacao)
                        .padding(.bottom,20)

                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(.white.opacity(0.8))
                
                
                Spacer()
                HStack{
                    ForEach(arrayMapas){ mapa in
                        AsyncImage(url: URL(string: mapa.bandeira)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 75, height: 50)
                        .onTapGesture {
                            posicao = MapCameraPosition.region(
                                MKCoordinateRegion(
                                    center: CLLocationCoordinate2D(latitude: mapa.coordenada.latitude, longitude: mapa.coordenada.longitude),
                                    span:  MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
                                    
                                )
                            )
                            localizacao = mapa.name
                            aux = mapa
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
