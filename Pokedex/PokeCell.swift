//
//  PokeCell.swift
//  Pokedex
//
//  Created by David Sternheim on 8/7/17.
//  Copyright © 2017 David Sternheim. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon){
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalized
        thumbnailImg.image = UIImage(named: "\(self.pokemon.pokedexID)")
    }
    
}
