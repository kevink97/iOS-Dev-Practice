//
//  RoundedImageView.swift
//  MVCTest
//
//  Created by Kevin Kang on 1/11/17.
//  Copyright © 2017 Kevin Kang. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }
}
