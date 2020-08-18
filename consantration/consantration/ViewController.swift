//
//  ViewController.swift
//  consantration
//
//  Created by Semih Çelek on 17.08.2020.
//  Copyright © 2020 Semih Çelek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isPurple = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func changeColor(_ sender: Any) {
        if isPurple {
            view.backgroundColor = UIColor.red
            isPurple = false
        } else {
            view.backgroundColor = UIColor.purple
            isPurple = true
        }
        
    }
    
}

