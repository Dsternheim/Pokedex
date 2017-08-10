//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by David Sternheim on 8/8/17.
//  Copyright © 2017 David Sternheim. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameImg: UIImageView!
    @IBOutlet weak var decripLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var pokedexIDLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var nextEvoDescripLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoLbl: UIImageView!
    
    
    
    
    
    @IBOutlet weak var nameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name.capitalized
        
        let img = UIImage(named: "\(pokemon.pokedexID)")
        nameImg.image = img
        currentEvoImg.image = img
        pokedexIDLbl.text = "\(pokemon.pokedexID)"
        
        pokemon.downloadPokemonDetails {
            //code block will only be used after the network call is complete
            
            print("PASSED TEST")
            self.updateUI()
        }
        
    }
    
    func updateUI(){
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        heightLbl.text = pokemon.height
        weightLbl.text = pokemon.weight
        typeLbl.text = pokemon.type
        decripLbl.text = pokemon.description
        
        if pokemon.nextEvolutionID == "" {
            
            nextEvoDescripLbl.text = "No Further Evolutions"
            nextEvoLbl.isHidden = true
            
        } else {
            
            nextEvoLbl.isHidden = false
            nextEvoLbl.image = UIImage(named: pokemon.nextEvolutionID)
            let str = "Next Evolution: \(pokemon.nextEvolutionName) \(pokemon.nextEvolutionLvl)"
            nextEvoDescripLbl.text = str
            
        }
        
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
   

}
