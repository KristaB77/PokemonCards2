//
//  Pokemon.swift
//  PokemonCards
//
//  Created by krista.bolsakova on 08/08/2021.
//

import Foundation


struct Pokemon: Decodable {
    let id: String
    let name: String
    let imageUrl: String
    let number: String
    let supertype: String?
    let subtype: String?
    
    enum CodingKeys: String, CodingKey{
        case id, name, imageUrl, number, supertype, subtype
 }
}

struct Card: Decodable{
    let cards: [Pokemon]
}
