//
//  ColorController.swift
//  mygame
//
//  Created by Cronabit 1 on 06/11/17.
//  Copyright © 2017 Cronabit 1. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
}
extension UIColor {
    var toHexString: String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return String(
            format: "%02X%02X%02X",
            Int(r * 0xff),
            Int(g * 0xff),
            Int(b * 0xff)
        )
    }
}

class ColorController: UIViewController {

    @IBOutlet var ibimage: UIImageView!
    @IBOutlet var color_label: UILabel!
    @IBOutlet var red_button: UIButton!
    @IBOutlet var green_button: UIButton!
    @IBOutlet var blue_button: UIButton!
    @IBOutlet var yellow_button: UIButton!
 
    @IBOutlet var next_color: UIButton!
  
    var colorarray = ["green" : "00FF00","red" : "FF0000", "blue" : "0000FF", "yellow" : "FFFF00"]
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for (key,value) in colorarray
        {
            color_label.text = "\(key)"
            
            if(key == "red")
            {
                red_button.backgroundColor = UIColor(hex: "\(value)")
                
            }
            else if(key == "green")
            {
                green_button.backgroundColor = UIColor(hex: "\(value)")
                
            }
            else if(key == "blue")
            {
                 blue_button.backgroundColor = UIColor(hex: "\(value)")
                
            }
            else
            {
             yellow_button.backgroundColor = UIColor(hex: "\(value)")
            }
        }
        
        next_color.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func red_action(_ sender: AnyObject)
    {
        var bgcolor: UIColor?
        bgcolor = sender.backgroundColor
        //print(bgcolor!)
        let hex = bgcolor?.toHexString
        print(hex!)
        
        func getkeyfromvalue(keyvalue:String) -> String
        {
            for (key,value) in colorarray
            {
                if (value.contains(keyvalue))
                {
                    return key
                }
            }
            return " "
        }
        let currentcolor = getkeyfromvalue(keyvalue: hex!)
        
        if(currentcolor == color_label.text)
        {
            ibimage.image = UIImage(named: "right.png")
        }
        else
        {
            ibimage.image = UIImage(named: "wrong.png")
        }
    }

    @IBAction func next(_ sender: AnyObject)
    {
    }
    
}
