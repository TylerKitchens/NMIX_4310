//
//  ViewController.swift
//  segueDemo
//
//  Created by Tyler Kitchens on 1/27/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var testVar = "it worked"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let recieverView = segue.destination as! SegueViewController
        if (segue.identifier == "segue1"){
            recieverView.passedIt = "from first button"
        }else if(segue.identifier == "segue2"){
            recieverView.passedIt = "from second button"
        }else {
            recieverView.passedIt = "from third button"

        }
    }

}

