//
//  ColorController.swift
//  mygame
//
//  Created by Cronabit 1 on 06/11/17.
//  Copyright © 2017 Cronabit 1. All rights reserved.
//

import UIKit

class ColorController: UIViewController {

    @IBOutlet var ibimage: UIImageView!
    @IBOutlet var color_label: UILabel!
    @IBOutlet var red_button: UIButton!
    @IBOutlet var green_button: UIButton!
    @IBOutlet var blue_button: UIButton!
    @IBOutlet var yellow_button: UIButton!
    @IBOutlet var next_color: UIButton!
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        color_label.text = "Red"
        next_color.isHidden = true
        
        red_button.backgroundColor = UIColor.red
        green_button.backgroundColor = UIColor.green
        blue_button.backgroundColor = UIColor.blue
        yellow_button.backgroundColor = UIColor.yellow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func red_action(_ sender: AnyObject)
    {
        if(sender.tag == 0 && color_label.text == "Red")
        {
            ibimage.image = UIImage(named: "right.png")
            color_label.text = "Green"
            next_color.isHidden = false
        }
        else if(sender.tag == 1 && color_label.text == "Green")
        {
            ibimage.image = UIImage(named: "right.png")
            color_label.text = "Blue"
            next_color.isHidden = false

        }
        else if(sender.tag == 2 && color_label.text == "Blue")
        {
            ibimage.image = UIImage(named: "right.png")
            color_label.text = "Yellow"
            next_color.isHidden = false

        }
        else if(sender.tag == 3 && color_label.text == "Yellow")
        {
            ibimage.image = UIImage(named: "right.png")
            color_label.text = "Red"
            next_color.isHidden = false

        }
        else
        {
            ibimage.image = UIImage(named: "wrong.png")
            next_color.isHidden = true
        }
        
    }

    @IBAction func next(_ sender: AnyObject)
    {
        if(red_button.tag == 0)
        {
            red_button.tag = 1
            red_button.backgroundColor = UIColor.green
            
        }
        if(green_button.tag == 1)
        {
            green_button.tag = 2
            green_button.backgroundColor = UIColor.blue
            
        }
        if(blue_button.tag == 2)
        {
            blue_button.tag = 3
            blue_button.backgroundColor = UIColor.yellow
            
        }
        if(yellow_button.tag == 3)
        {
            yellow_button.tag = 0
            yellow_button.backgroundColor = UIColor.red
        }
        
    }
    
}
