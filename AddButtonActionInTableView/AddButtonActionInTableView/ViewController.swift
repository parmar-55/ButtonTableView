//
//  ViewController.swift
//  AddButtonActionInTableView
//
//  Created by Demo 01 on 19/04/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit


 var arr = ["virat","rohit","dhoni","hardik","yaday"]

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var mytable: UITableView!
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! cell
        cell.lbl1.text = arr[indexPath.row]
       cell.btn.tag = indexPath.row
       cell.btn.addTarget(self, action: #selector(addtobutton), for: .touchUpInside)
        return cell
        
    }
    
    @objc func addtobutton(sender:UIButton)
    {
        let indexPath1 = IndexPath(row: sender.tag, section: 0)
        selPyr = arr[indexPath1.row]
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    

}

class cell : UITableViewCell
{
    @IBOutlet var lbl1:UILabel!
    @IBOutlet var btn:UIButton!
    
    
}
