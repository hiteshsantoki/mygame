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
    @IBOutlet var playbutton: UIButton!
    @IBOutlet var settingbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alphabutton.frame = CGRect(x: 20, y: 62, width: 80, height: 80)
        alphabutton.layer.cornerRadius = 0.5 * alphabutton.bounds.size.width
        alphabutton.clipsToBounds = true
        speclingbutton.frame = CGRect(x: 140, y: 62, width: 80, height: 80)
        speclingbutton.layer.cornerRadius = 0.5 * speclingbutton.bounds.size.width
        speclingbutton.clipsToBounds = true
        colorbutton.frame = CGRect(x: 250, y: 62, width: 80, height: 80)
        colorbutton.layer.cornerRadius = 0.5 * colorbutton.bounds.size.width
        colorbutton.clipsToBounds = true
        rhymesbutton.frame = CGRect(x: 360, y: 62, width: 80, height: 80)
        rhymesbutton.layer.cornerRadius = 0.5 * rhymesbutton.bounds.size.width
        rhymesbutton.clipsToBounds = true
        playbutton.frame = CGRect(x: 30, y: 250, width: 50, height: 50)
        playbutton.layer.cornerRadius = 0.5 * playbutton.bounds.size.width
        playbutton.clipsToBounds = true
        settingbutton.frame = CGRect(x: 100, y: 250, width: 50, height: 50)
        settingbutton.layer.cornerRadius = 0.5 * settingbutton.bounds.size.width
        settingbutton.clipsToBounds = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

