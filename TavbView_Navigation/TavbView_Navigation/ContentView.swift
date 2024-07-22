//
//  ContentView.swift
//  TavbView_Navigation
//
//  Created by Turma02-5 on 15/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Rosa()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            Azul()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            Cinza()
                .tabItem {
                    Label("Cinza",systemImage: "paintpalette.fill")
                }
            Lista()
                .tabItem {
                    Label("Lista",systemImage: "list.bullet")
                }
            }
        }
}

#Preview {
    ContentView()
}
