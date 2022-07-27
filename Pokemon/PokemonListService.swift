//
//  PokemonListService.swift
//  Pokemon
//
//  Created by Wenxuan Chen on 7/27/22.
//

import Foundation

// official artwork: https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/{id}.png



struct PokemonListService {
    func request(offset: Int, completion: (([Pokemon]) -> Void)? = nil, failure: ((String?) -> Void)? = nil) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?offset=\(offset)&limit=20") else { return }
        DispatchQueue.global().async {
            API().fetchData(url: url) { result in
                switch result {
                case let .success(data):
                    guard  let rest = try? JSONDecoder().decode(Pokemons.self, from: data) else {
                        completion?([])
                        return
                    }
                    completion?(rest.results)
                case .failure(_):
                    completion?([])
                }
            }
        }
    }
}
