//
//  ViewController2.swift
//  UV
//
//  Created by Tyler Kitchens on 1/13/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var newVar: UITextField!
    
    @IBAction func myFunction(_ sender: UITextField) {
        topic = newVar.text!
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
