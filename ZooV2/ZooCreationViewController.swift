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
    var zoo = Zoo(name: "Your Zoo", zooKeeper: "Anonymous")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func createZooButton(sender: AnyObject) {
        zoo.name = zooNameTextField.text!
        zoo.zooKeeper = zooKeeperNameTextField.text!
        }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destVC: PenViewController = segue.destinationViewController as! PenViewController
        destVC.zooNameLabelText = zooNameTextField.text!
        destVC.zooKeeperNameLabelText = zooKeeperNameTextField.text!
    }
}

