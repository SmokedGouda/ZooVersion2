//
//  AddAnimalViewController.swift
//  ZooV2
//
//  Created by Craig Carlson on 10/18/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class AddAnimalViewController: UIViewController {

    @IBOutlet weak var animalNameTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var speciesTextField: UITextField!
    
    
    var newAnimal = Animal?()
    var newBabyAnimal = BabyAnimal?()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addAnimalButton(sender: UIButton) {
        
        switch sender.titleLabel!.text! {
            case "Add Animal":
                newAnimal = Animal(name: animalNameTextField.text!, species: speciesTextField.text!, gender: genderTextField.text!)
                print(newAnimal!.name)
            case "Add Baby Animal":
                newBabyAnimal = BabyAnimal(name: animalNameTextField.text!, species: speciesTextField.text!, gender: genderTextField.text!)
                print(newBabyAnimal!.name)
            default:
                print("nothing happened")
            }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
