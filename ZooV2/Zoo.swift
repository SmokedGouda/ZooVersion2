//
//  Zoo.swift
//  ZooV2
//
//  Created by Craig Carlson on 10/16/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import Foundation


class Zoo {
    var name:String
    var zooKeeper:String
    var animalPens = [Pen]()
    init(name: String, zooKeeper:String){
        self.name = name
        self.zooKeeper = zooKeeper
    }
    
    func addAnimalPen(penToAdd: Pen) {
        animalPens.append(penToAdd)
    }
    
    func removeAnimalPen(penToRemove: Pen) {
        if penToRemove.animalMembers.count > 0 || penToRemove.babyAnimalMembers.count > 0 {
            print("You can't remove this pen.  There are still animals in it!")
        } else {
            for (index, value) in animalPens.enumerate() {
                if penToRemove.name == value.name {
                    animalPens.removeAtIndex(index)
                    print("The \(value.name) pen has been removed from \(name)")
                }
            }
        }
    }
    
    func showAnimalsInZoo() {
        for pen in animalPens {
            pen.displayPenMembers()
        }
    }
}
