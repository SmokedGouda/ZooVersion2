//
//  Pens.swift
//  ZooV2
//
//  Created by Craig Carlson on 10/16/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import Foundation

class Pen {
    var name: String
    var animalMembers = [Animal]()
    var babyAnimalMembers = [BabyAnimal]()
    init(name: String){
        self.name = name
    }
    
    func addAnimalToPen(animal: Animal) {
        if animalMembers.count >= 4 {
            print("The pen is too crowded. Can't add anymore animals.")
        } else {
            animalMembers.append(animal)
        }
    }
    
    func addBabyAnimalToPen(animal: BabyAnimal) {
        if babyAnimalMembers.count >= 10 {
            print("The pen is too crowded. Can't add anymore baby animals.")
        } else {
            var maleCount = 0
            var femaleCount = 0
            
            for (_, value) in animalMembers.enumerate() {
                let gender = value.gender
                switch gender {
                case "male":
                    maleCount++
                    print("The male animal count is \(maleCount)")
                case "female":
                    femaleCount++
                    print("The female animal count is \(femaleCount)")
                default:
                    print("no gender specified")
                }
            }
            if maleCount == 0 || femaleCount == 0 {
                print("You can't add a baby animal to this pen because a male and female animal is not present.")
            } else {
                babyAnimalMembers.append(animal)
            }
        }
    }
    
    func deleteAnimal(animal: Animal) {
        for (index, value) in animalMembers.enumerate() {
            if animal.name == value.name {
                animalMembers.removeAtIndex(index)
            }
        }
    }
    
    func deleteBabyAnimal(animal: BabyAnimal) {
        for (index, value) in babyAnimalMembers.enumerate() {
            if animal.name == value.name {
                babyAnimalMembers.removeAtIndex(index)
            }
        }
    }
    func displayPenMembers() {
        
        for animal in animalMembers {
            print("\(animal.name) is a \(animal.gender) \(animal.species)")
        }
        
        for babyAnimal in babyAnimalMembers {
            print("\(babyAnimal.name) is a \(babyAnimal.gender) \(babyAnimal.species)")
        }
    }
}
