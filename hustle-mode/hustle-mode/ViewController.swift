//
//  ViewController.swift
//  hustle-mode
//
//  Created by Semih Çelek on 17.08.2020.
//  Copyright © 2020 Semih Çelek. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var darkBlueBg: UIImageView!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var humleLabel: UILabel!
    @IBOutlet weak var freakLabel: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }
    
    @IBAction func onStart(_ sender: Any) {
        cloudHolder.isHidden = false
        darkBlueBg.isHidden = true
        startBtn.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 10, width: 445, height: 780)
        }) { (finished) in
            self.humleLabel.isHidden = false
            self.freakLabel.isHidden = false
            
        }
        
    }
    
}

