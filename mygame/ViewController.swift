//
//  ViewController.swift
//  mygame
//
//  Created by Cronabit 1 on 28/10/17.
//  Copyright © 2017 Cronabit 1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var speclingbutton: UIButton!
    @IBOutlet var alphabutton: UIButton!
    @IBOutlet var colorbutton: UIButton!
    @IBOutlet var rhymesbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        speclingbutton.frame = CGRect(x: 197, y: 62, width: 80, height: 80)
        speclingbutton.layer.cornerRadius = 0.5 * speclingbutton.bounds.size.width
        speclingbutton.clipsToBounds = true
        alphabutton.frame = CGRect(x: 50, y: 62, width: 80, height: 80)
        alphabutton.layer.cornerRadius = 0.5 * alphabutton.bounds.size.width
        alphabutton.clipsToBounds = true
        colorbutton.frame = CGRect(x: 335, y: 62, width: 80, height: 80)
        colorbutton.layer.cornerRadius = 0.5 * colorbutton.bounds.size.width
        colorbutton.clipsToBounds = true
        rhymesbutton.frame = CGRect(x: 403, y: 62, width: 80, height: 80)
        rhymesbutton.layer.cornerRadius = 0.5 * rhymesbutton.bounds.size.width
        rhymesbutton.clipsToBounds = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

