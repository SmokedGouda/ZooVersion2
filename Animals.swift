//
//  ZooAnimals.swift
//  ZooV2
//
//  Created by Craig Carlson on 10/16/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import Foundation

class Animal {
    var name: String
    var species: String
    var gender: String
    
    init(name: String, species: String, gender: String) {
        self.name = name
        self.species = species
        self.gender = gender
    }
}

class BabyAnimal:Animal {
    override init(name: String, species: String, gender: String) {
        super.init(name: name, species: species, gender: gender)
    }
}
