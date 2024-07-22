//
//  Rosa.swift
//  TavbView_Navigation
//
//  Created by Turma02-5 on 15/07/24.
//

import SwiftUI

struct Rosa: View {
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.top)
            Circle()
                .frame(width: 300)
            Image(systemName: "paintbrush")
                .resizable()
                .foregroundColor(.pink)
                .scaledToFit()
                .frame(width: 200)
        }
        
    }
    
}

#Preview {
    Rosa()
}
