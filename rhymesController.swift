//
//  rhymesController.swift
//  mygame
//
//  Created by Cronabit 1 on 02/11/17.
//  Copyright © 2017 Cronabit 1. All rights reserved.
//

import UIKit

class rhymesController: UIViewController {

    @IBOutlet var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

         getVideo(videoCode: "gOJk8650Va4?list=PLdzJjydjtVtaCcTfHBonuhX4h14r_Arfs")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getVideo(videoCode : String)
    {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
            webview.loadRequest(URLRequest(url: url!))
    }
   
}
