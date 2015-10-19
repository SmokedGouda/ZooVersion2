//
//  AddPenViewController.swift
//  ZooV2
//
//  Created by Craig Carlson on 10/18/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class AddPenViewController: UIViewController {
    @IBOutlet weak var newPenNameTextField: UITextField!
    var newPen = Pen?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addPenToZooButton(sender: UIButton) {
        let newPenName = Pen(name: newPenNameTextField.text!)
        newPen = newPenName
        }
}
