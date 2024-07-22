//
//  Lista.swift
//  TavbView_Navigation
//
//  Created by Turma02-5 on 15/07/24.
//

import SwiftUI

struct Lista: View {
    
    private let cores = ["Rosa","Azul","Cinza"]
    private let icones = ["paintbrush","paintbrush.pointed.fill","paintpalette.fill"]
    
    var body: some View {
        NavigationView {
            HStack{
                List(cores, id: \.self) { cor in
                    HStack{
                        Text("\(cor)")
                        Spacer()
                        Image(systemName: "\(cor)")

                    }
                    
                    
                }
            }
            .navigationTitle("Cores")
        }
    }
}

#Preview {
    Lista()
}
