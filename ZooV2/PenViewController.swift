//
//  PenViewController.swift
//  ZooV2
//
//  Created by Craig Carlson on 10/18/15.
//  Copyright © 2015 Craig Carlson. All rights reserved.
//

import UIKit

class PenViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var zooNameLabel: UILabel!
    @IBOutlet weak var zooKeeperNameLabel: UILabel!
    @IBOutlet weak var penTableView: UITableView!
    
    var zooNameLabelText = String()
    var zooKeeperNameLabelText = String()
    var zoo = Zoo(name: "name", zooKeeper: "name")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zooNameLabel.text = zooNameLabelText
        zooKeeperNameLabel.text = zooKeeperNameLabelText
        zoo = Zoo(name: zooNameLabelText, zooKeeper: zooKeeperNameLabelText)
        print("\(zoo.name) managed by \(zoo.zooKeeper)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        penTableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AddPenSegue" {
        let destVC: AddPenViewController = segue.destinationViewController as! AddPenViewController
        }
    }
    
    @IBAction func unwindForSegue(unwindSegue: UIStoryboardSegue) {
        if(unwindSegue.sourceViewController .isKindOfClass(AddPenViewController)) {
            let newPenInZoo: AddPenViewController = unwindSegue.sourceViewController as! AddPenViewController
            let newPenToAdd = newPenInZoo.newPen
            zoo.addAnimalPen(newPenToAdd!)
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (zoo.animalPens.count)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("penCell") as UITableViewCell!
        if(cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "penCell")
        }
        let zooPens = zoo.animalPens[indexPath.row]
        cell.textLabel?.text = zooPens.name
        return cell
    }
}

    
    

