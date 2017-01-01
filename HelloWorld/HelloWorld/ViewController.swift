//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kevin Kang on 1/1/17.
//  Copyright © 2017 Kevin Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var titleImg: UIImageView!
    
    @IBOutlet weak var welcomeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcomePressed(_ sender: Any) {
        titleImg.isHidden = false
        background.isHidden = false
        welcomeBtn.isHidden = true
    }

}

