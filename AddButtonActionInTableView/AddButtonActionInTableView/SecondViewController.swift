//
//  SecondViewController.swift
//  AddButtonActionInTableView
//
//  Created by Demo 01 on 19/04/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit



var selPyr=""


class SecondViewController: UIViewController {

    @IBOutlet var lbl:UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       lbl.text = selPyr
    }
    



}
