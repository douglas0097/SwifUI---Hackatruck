//
//  Mapa.swift
//  Map
//
//  Created by Turma02-5 on 17/07/24.
//

import Foundation
import MapKit

struct Mapa: Identifiable {
    let id = UUID()
    let name: String
    let coordenada: CLLocationCoordinate2D
    let bandeira: String
    let descricao: String
}

