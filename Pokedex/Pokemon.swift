//
//  Pokemon.swift
//  Pokedex
//
//  Created by David Sternheim on 8/7/17.
//  Copyright © 2017 David Sternheim. All rights reserved.
//

import Foundation


class Pokemon{
    private var _name: String!
    private var _pokedexID: Int!
    
    var name: String{
    
        return _name
    
    }
    
    var pokedexID: Int{
        
        return _pokedexID
    
    }
    
    init(name: String, pokedexID: Int) {
        
        self._name=name
        self._pokedexID=pokedexID
        
    }
}
