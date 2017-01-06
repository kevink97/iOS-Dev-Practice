//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Kevin Kang on 1/5/17.
//  Copyright © 2017 Kevin Kang. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Label.text = _selectedSong
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Label: UILabel!
    private var _selectedSong:String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
