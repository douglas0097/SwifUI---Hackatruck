//
//  Model.swift
//  API
//
//  Created by Turma02-5 on 18/07/24.
//

import Foundation

struct CEP: Decodable, Hashable{
    let cep: String
    let state: String
    let city: String
    let neighborhood: String
    let street: String
}
