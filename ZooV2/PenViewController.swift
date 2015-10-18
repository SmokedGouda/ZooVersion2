//
//  PenViewController.swift
//  ZooV2
//
//  Created by Craig Carlson on 10/18/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class PenViewController: UIViewController {
    @IBOutlet weak var zooNameLabel: UILabel!
    @IBOutlet weak var zooKeeperNameLabel: UILabel!
    var zooNameLabelText = String()
    var zooKeeperNameLabelText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zooNameLabel.text = zooNameLabelText
        zooKeeperNameLabel.text = zooKeeperNameLabelText

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func addPenToZooButton(sender: AnyObject) {
    }
}
