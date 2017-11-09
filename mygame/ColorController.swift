//
//  ColorController.swift
//  mygame
//
//  Created by Cronabit 1 on 06/11/17.
//  Copyright © 2017 Cronabit 1. All rights reserved.
//

import UIKit
import Foundation



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
extension Array
{
    mutating func shuffle()
    {
        for _ in 0..<5
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
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
            if(key == "green")
            {
                green_button.backgroundColor = UIColor(hex: "\(value)")
                
            }
            if(key == "blue")
            {
                 blue_button.backgroundColor = UIColor(hex: "\(value)")
                
            }
            if(key == "yellow")
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
       ibimage.isHidden = false
        var rightanswer = 0
        var bgcolor: UIColor?
        bgcolor = sender.backgroundColor
        let hex = bgcolor?.toHexString
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
              rightanswer = 1
        }
        else
        {
                ibimage.image = UIImage(named: "wrong.png")
        }
        if(rightanswer == 1)
        {
            next_color.isHidden = false
            
        }
    }

   @IBAction  func next(_ sender: AnyObject)
    {
        next_color.isHidden = true
        ibimage.isHidden = true
        
       var rightanswer = 0
        var bgcolor: UIColor?
        bgcolor = sender.backgroundColor
        let hex = bgcolor?.toHexString
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
            rightanswer = 1
        }
        else
        {
            ibimage.image = UIImage(named: "wrong.png")
        }
        if(rightanswer == 1)
        {
            next_color.isHidden = false
            ibimage.isHidden = false
        }
        func randomizeArr(arr: [String: String]) -> String?
        {
            let keys: [String] = [String](arr.keys.map { $0 }) // Gathers all keys and converts to string
            let randomNumber = Int(arc4random_uniform(UInt32(arr.count))) // Generates random number
            let key: String = keys[randomNumber] // Gets a random key
            guard let _: String = arr[key] else {
                return nil
            }
            return key
        }
        let randno = (randomizeArr(arr: colorarray)!)
        for (key,value) in colorarray
        {
            color_label.text = String(describing: randno)
            if(key == "red")
            {
                red_button.backgroundColor = UIColor(hex: "\(value)")
            }
            if(key == "green")
            {
                green_button.backgroundColor = UIColor(hex: "\(value)")
            }
            if(key == "blue")
            {
                blue_button.backgroundColor = UIColor(hex: "\(value)")
            }
            if(key == "yellow")
            {
                yellow_button.backgroundColor = UIColor(hex: "\(value)")
            }
        }

    }
}

