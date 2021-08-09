//
//  PokemonTableViewCell.swift
//  PokemonCards
//
//  Created by krista.bolsakova on 07/08/2021.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeyImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var superTypeLabel: UILabel!
    
    @IBOutlet weak var hpLabel: UILabel!
    
    @IBOutlet weak var subtypeLabel: UILabel!
    
    func setupUI(with: Pokemon){
        nameLabel.text = "Name: " + with.name
        hpLabel.text = "Card value: " + with.number
        
        ImageController.getImage(for: with.imageUrl) {image in
            self.pokeyImageView.image = image
            
            
        }
        if let subtype = with.subtype{
            subtypeLabel.text = "Card: " + subtype
        }
    }
    
}
