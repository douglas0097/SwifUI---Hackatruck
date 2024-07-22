//
//  ViewModel.swift
//  API
//
//  Created by Turma02-5 on 18/07/24.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var pCEP : String = ""
    @Published var pState : String = ""
    @Published var pCity : String = ""
    @Published var pNeighborhood : String = ""
    @Published var pStreet : String = ""
    
    func fetch(lugar: String){
        guard let url = URL(string: "https://brasilapi.com.br/api/cep/v1/{\(lugar)}") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            do {
                let jsonDecodificado = try JSONDecoder().decode(CEP.self, from: data)
                
                DispatchQueue.main.async{
                    self?.pCEP = jsonDecodificado.cep
                    self?.pState = jsonDecodificado.state
                    self?.pCity = jsonDecodificado.city
                    self?.pNeighborhood = jsonDecodificado.neighborhood
                    self?.pStreet = jsonDecodificado.street
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}

