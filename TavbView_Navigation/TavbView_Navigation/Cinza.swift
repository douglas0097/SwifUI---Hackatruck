//
//  Cinza.swift
//  TavbView_Navigation
//
//  Created by Turma02-5 on 15/07/24.
//

import SwiftUI

struct Cinza: View {
    var body: some View {
        ZStack{
            Color.gray
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 300)
            Image(systemName: "paintpalette.fill")
                .resizable()
                .foregroundColor(.gray)
                .scaledToFit()
                .frame(width: 200)
        }    }
}

#Preview {
    Cinza()
}
