//
//  ViewController.swift
//  ZooV2
//
//  Created by Craig Carlson on 10/16/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class ZooCreationViewController: UIViewController {

    @IBOutlet weak var zooNameTextField: UITextField!
    @IBOutlet weak var zooKeeperNameTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destVC: PenViewController = segue.destinationViewController as! PenViewController
        destVC.zooNameLabelText = zooNameTextField.text!
        destVC.zooKeeperNameLabelText = zooKeeperNameTextField.text!
    }
}

