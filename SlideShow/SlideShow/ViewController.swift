//
//  ViewController.swift
//  SlideShow
//
//  Created by Tyler Kitchens on 1/27/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pico = ["one.jpg", "two.jpg", "three.jpg", "four.jpg", "five.jpg"]
    
    var currentPicture = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func previous(_ sender: Any) {
        currentPicture-=1
        showPico()
    }
    
    
    @IBAction func next(_ sender: Any) {
        currentPicture+=1
        showPico()
    }
    @IBOutlet weak var show: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showPico()
        // Do any additional setup after loading the view.
    }
    
    func showPico(){
        if(currentPicture > 4 ){
            currentPicture = 0
        }else if(currentPicture < 0){
            currentPicture = 4
        }
        label.text = pico[currentPicture]
        let displayPic = UIImage(named : pico[currentPicture])
        show.image = displayPic
        
    }


}

