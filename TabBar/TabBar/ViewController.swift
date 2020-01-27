//
//  ViewController.swift
//  TabBar
//
//  Created by Tyler Kitchens on 1/27/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarDelegate {

    @IBOutlet weak var myPic: UIImageView!
    @IBOutlet weak var christine: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        christine.delegate = self
    }

    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if( item.tag == 1){
            myPic.image = UIImage(named: "bigboy.jpg")
        }else{
            myPic.image = UIImage(named: "beach.jpg")
        }
    }
}

