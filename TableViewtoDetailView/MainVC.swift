//
//  MainVC.swift
//  TableViewtoDetailView
//
//  Created by David Owens on 6/17/14.
//  Copyright (c) 2014 rhinoIO. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //Our viewTable
    @IBOutlet var table: UITableView!
    
    //Our Array of team names
    var items: String[] = ["Brazil", "USA", "Argentina", "Germany"]


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        
        //Force the tableView to reload upon return
        table.reloadData();
    
    }
    
    //TableViewDatasource
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        
        //Count number of rows in our var "items"
        return self.items.count
    
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "TableView");
        
        //Assign the contents of our var "items" to the textLabel of each cell
        cell.textLabel.text = self.items[indexPath.row]
        
        return cell;
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        //Create instance of DetailVC
        var detail:DetailVC = self.storyboard.instantiateViewControllerWithIdentifier("DetailVC") as DetailVC
        
        //Reference DetailVC's var "cellName" and assign it to this controller's var "items"
        detail.cellName = self.items[indexPath.row]

        //Programmatically push to associated VC (DetailVC)
        self.navigationController.pushViewController(detail, animated: true)
    }


}
