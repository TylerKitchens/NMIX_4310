//
//  ViewController.swift
//  Outlets
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

    @IBAction func myAction(_ sender: UIButton) {
        showImage.image = UIImage(named: "bigboy.jpg")
    }
    
   
    @IBAction func test2(_ sender: UIButton) {
        showImage.image = UIImage(named: "beach.jpg")
    }
    
    @IBAction func test3(_ sender: UIButton) {
        showImage.image = UIImage(named: "tree.jpg")
    }
    @IBAction func test(_ sender: UIButton) {
        showImage.image = UIImage(named: "butterfly.jpg")
    }

    @IBOutlet weak var showImage: UIImageView!
}

