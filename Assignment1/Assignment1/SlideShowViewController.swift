//
//  SlideShowViewController.swift
//  Assignment1
//
//  Created by Tyler Kitchens on 1/27/20.
//  Copyright © 2020 Kitchens. All rights reserved.
//

import UIKit

class SlideShowViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var imgLbl: UILabel!
    
    var carArr = ["car1.jpg", "car2.jpg", "car3.jpg"]
    
    var sportArr = ["sport1.jpg", "sport2.jpg", "sport3.jpg"]
    
    var currentIndex = 0
    var type = false
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func goBack(_ sender: Any) {
        currentIndex -= 1
        displayImg(showType: type)
        
    }
    
    
    @IBAction func goForward(_ sender: Any) {
        currentIndex += 1
        displayImg(showType: type)
    }
    
    func displayImg(showType: Bool){
        //True is cars false is sports
        if(showType){
            let display = UIImage(named: carArr[currentIndex])
            imageView.image = display
        }
        else{
            let display = UIImage(named: sportArr[currentIndex])
            imageView.image = display
        }
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
