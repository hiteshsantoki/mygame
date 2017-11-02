//
//  ViewController.swift
//  mygame
//
//  Created by Cronabit 1 on 28/10/17.
//  Copyright © 2017 Cronabit 1. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    let beepSoundURL =  Bundle.main.url(forResource: "iphone_6_original", withExtension: "mp3")!
    var beepPlayer = AVAudioPlayer()
    
    @IBOutlet var speclingbutton: UIButton!
    @IBOutlet var alphabutton: UIButton!
    @IBOutlet var colorbutton: UIButton!
    @IBOutlet var rhymesbutton: UIButton!
    @IBOutlet var playbutton: UIButton!
    @IBOutlet var settingbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func playMySound(){
        do {
            beepPlayer = try AVAudioPlayer(contentsOf: beepSoundURL)
        } catch
        {
            print(error)
        }
        beepPlayer.prepareToPlay()
        beepPlayer.play()
    }
    
    @IBAction func audio(_ sender: AnyObject) {
        playMySound()
    }
    

}

