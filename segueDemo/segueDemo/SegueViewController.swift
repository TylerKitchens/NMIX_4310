//
//  SegueViewController.swift
//  segueDemo
//
//  Created by Tyler Kitchens on 1/27/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import UIKit

class SegueViewController: UIViewController {

    var passedIt = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = passedIt;

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var label: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
