//
//  alphaViewController.swift
//  mygame
//
//  Created by Cronabit 1 on 31/10/17.
//  Copyright © 2017 Cronabit 1. All rights reserved.
//

import UIKit
import AVFoundation

class alphaViewController: UIViewController {

    @IBOutlet var imageview: UIImageView!
    @IBOutlet var prevbutton: UIButton!
    @IBOutlet var nextbutton: UIButton!
    
    var imageint = 0
    var a = Bundle.main.url(forResource: "a", withExtension: "mp3")
    var beepPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      imageint = 1
        
        do {
            beepPlayer = try AVAudioPlayer(contentsOf: a!)
        } catch
        {
            print(error)
        }
        
        beepPlayer.prepareToPlay()
        beepPlayer.play()
       
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
            
            if let b = Bundle.main.url(forResource: "b", withExtension: "mp3"){
        
            do {
                beepPlayer = try AVAudioPlayer(contentsOf: b)
            } catch
            {
                print(error)
            }
            beepPlayer.prepareToPlay()
            beepPlayer.play()
            }
        case 3:
            
            imageview.image = UIImage(named: "C-for-cat.jpg")
            
            if let c = Bundle.main.url(forResource: "c", withExtension: "mp3"){
                
            do {
                beepPlayer = try AVAudioPlayer(contentsOf: c)
            } catch
            {
                print(error)
            }
            beepPlayer.prepareToPlay()
            beepPlayer.play()
            }
            
        case 4:
            imageview.image = UIImage(named: "D-for-doll.jpg")
            if let d = Bundle.main.url(forResource: "d", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: d)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 5:
            imageview.image = UIImage(named: "E-for-eagle.jpg")
            if let e = Bundle.main.url(forResource: "e", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: e)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 6:
            imageview.image = UIImage(named: "F-for-fox.jpg")
            if let f = Bundle.main.url(forResource: "f", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: f)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 7:
            imageview.image = UIImage(named: "G-for-goat.jpg")
            if let g = Bundle.main.url(forResource: "g", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: g)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 8:
            imageview.image = UIImage(named: "H-for-horse.jpg")
            if let h = Bundle.main.url(forResource: "h", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: h)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 9:
            imageview.image = UIImage(named: "I-for-ice-cream.jpg")
            if let i = Bundle.main.url(forResource: "i", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: i)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 10:
            imageview.image = UIImage(named: "J-for-jug.jpg")
            if let j = Bundle.main.url(forResource: "j", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: j)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 11:
            imageview.image = UIImage(named: "K-for-kangaroo.jpg")
            if let k = Bundle.main.url(forResource: "k", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: k)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 12:
            imageview.image = UIImage(named: "L-for-lion.jpg")
            if let l = Bundle.main.url(forResource: "l", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: l)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 13:
            imageview.image = UIImage(named: "M-for-mango.jpg")
            if let m = Bundle.main.url(forResource: "m", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: m)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 14:
            imageview.image = UIImage(named: "N-for-nest.jpg")
            if let n = Bundle.main.url(forResource: "n", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: n)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 15:
            imageview.image = UIImage(named: "O-for-owl.jpg")
            if let o = Bundle.main.url(forResource: "o", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: o)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 16:
            imageview.image = UIImage(named: "P-for-parrot.jpg")
            if let p = Bundle.main.url(forResource: "p", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: p)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 17:
            imageview.image = UIImage(named: "Q-for-quail.jpg")
            if let q = Bundle.main.url(forResource: "q", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: q)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 18:
            imageview.image = UIImage(named: "R-for-rabbit.jpg")
            if let r = Bundle.main.url(forResource: "r", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: r)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 19:
            imageview.image = UIImage(named: "S-for-snake.jpg")
            if let s = Bundle.main.url(forResource: "s", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: s)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 20:
            imageview.image = UIImage(named: "T-for-tiger.jpg")
            if let t = Bundle.main.url(forResource: "t", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: t)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 21:
            imageview.image = UIImage(named: "U-for-umbrella.jpg")
            if let u = Bundle.main.url(forResource: "u", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: u)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 22:
            imageview.image = UIImage(named: "V-for-van.jpg")
            if let v = Bundle.main.url(forResource: "v", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: v)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 23:
            imageview.image = UIImage(named: "W-for-watch.jpg")
            if let w = Bundle.main.url(forResource: "w", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: w)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 24:
            imageview.image = UIImage(named: "X-for-xmas-tree.jpg")
            if let x = Bundle.main.url(forResource: "x", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: x)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 25:
            imageview.image = UIImage(named: "Y-for-yak.jpg")
            nextbutton.isEnabled = true
            if let y = Bundle.main.url(forResource: "y", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: y)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        case 26:
            imageview.image = UIImage(named: "Z-for-zebra.jpg")
            nextbutton.isEnabled = false
            if let z = Bundle.main.url(forResource: "z", withExtension: "mp3"){
                
                do {
                    beepPlayer = try AVAudioPlayer(contentsOf: z)
                } catch
                {
                    print(error)
                }
                beepPlayer.prepareToPlay()
                beepPlayer.play()
            }
        default: break
        }
    }
    
}
