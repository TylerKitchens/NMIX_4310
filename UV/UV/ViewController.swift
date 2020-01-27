//
//  ViewController.swift
//  UV
//
//  Created by Tyler Kitchens on 1/13/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!
    
    override func viewDidAppear(_ animated: Bool) {
        label.text = topic
    }

}

