//
//  alphaViewController.swift
//  mygame
//
//  Created by Cronabit 1 on 31/10/17.
//  Copyright © 2017 Cronabit 1. All rights reserved.
//

import UIKit

class alphaViewController: UIViewController {

    @IBOutlet var imageview: UIImageView!
    @IBOutlet var prevbutton: UIButton!
    @IBOutlet var nextbutton: UIButton!
    
    var imageint = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      imageint = 1
       

          }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func prev(_ sender: Any) {
    
        imageint -= 1
        self.imagegallary()
    }
   
    @IBAction func next(_ sender: Any) {
        imageint += 1
        self.imagegallary()
    }
    
    func imagegallary(){
        
        switch imageint {
        case 1:
            prevbutton.isEnabled = false
            imageview.image = UIImage(named: "A-for-apple.jpg")
        case 2:
            prevbutton.isEnabled = true
            imageview.image = UIImage(named: "B-for-ball.jpg")
        case 3:
            imageview.image = UIImage(named: "C-for-cat.jpg")
        case 4:
            imageview.image = UIImage(named: "D-for-doll.jpg")
        case 5:
            imageview.image = UIImage(named: "E-for-eagle.jpg")
        case 6:
            imageview.image = UIImage(named: "F-for-fox.jpg")
        case 7:
            imageview.image = UIImage(named: "G-for-goat.jpg")
        case 8:
            imageview.image = UIImage(named: "H-for-horse.jpg")
        case 9:
            imageview.image = UIImage(named: "I-for-ice-cream.jpg")
        case 10:
            imageview.image = UIImage(named: "J-for-jug.jpg")
        case 11:
            imageview.image = UIImage(named: "K-for-kangaroo.jpg")
        case 12:
            imageview.image = UIImage(named: "L-for-lion.jpg")
        case 13:
            imageview.image = UIImage(named: "M-for-mango.jpg")
        case 14:
            imageview.image = UIImage(named: "N-for-nest.jpg")
        case 15:
            imageview.image = UIImage(named: "O-for-owl.jpg")
        case 16:
            imageview.image = UIImage(named: "P-for-parrot.jpg")
        case 17:
            imageview.image = UIImage(named: "Q-for-quail.jpg")
        case 18:
            imageview.image = UIImage(named: "R-for-rabbit.jpg")
        case 19:
            imageview.image = UIImage(named: "S-for-snake.jpg")
        case 20:
            imageview.image = UIImage(named: "T-for-tiger.jpg")
        case 21:
            imageview.image = UIImage(named: "U-for-umbrella.jpg")
        case 22:
            imageview.image = UIImage(named: "V-for-van.jpg")
        case 23:
            imageview.image = UIImage(named: "W-for-watch.jpg")
        case 24:
            imageview.image = UIImage(named: "X-for-xmas-tree.jpg")
        case 25:
            imageview.image = UIImage(named: "Y-for-yak.jpg")
            nextbutton.isEnabled = true
        case 26:
            imageview.image = UIImage(named: "Z-for-zebra.jpg")
            nextbutton.isEnabled = false
        default: break
        }
    }
    
}
