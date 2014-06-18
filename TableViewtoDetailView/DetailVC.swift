//
//  DetailVC.swift
//  TableViewtoDetailView
//
//  Created by David Owens on 6/17/14.
//  Copyright (c) 2014 rhinoIO. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    //Our label for displaying var "items/cellName"
    @IBOutlet var cellNameLabel: UILabel!
    
    //Receiving variable assigned to MainVC's var "items"
    var cellName: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign your UILabel text to your String
        cellNameLabel.text = cellName
        
        //Assign String var to NavBar title
        self.title = cellName
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
