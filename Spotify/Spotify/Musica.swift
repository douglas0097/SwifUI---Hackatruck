//
//  Musica.swift
//  Spotify
//
//  Created by Turma02-5 on 16/07/24.
//

import SwiftUI

struct Musica: Identifiable {
    var id: Int
    var nome: String
    var artista: String
    var capa: String
}

struct Sugerido: Identifiable {
    var id: Int
    var nome: String
    var capa: String
}
