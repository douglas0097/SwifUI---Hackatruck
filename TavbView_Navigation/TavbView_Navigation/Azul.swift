//
//  Azul.swift
//  TavbView_Navigation
//
//  Created by Turma02-5 on 15/07/24.
//

import SwiftUI

struct Azul: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 300)
            Image(systemName: "paintbrush.pointed.fill")
                .resizable()
                .foregroundColor(.blue)
                .scaledToFit()
                .frame(width: 200)
        }
    }
}

#Preview {
    Azul()
}
