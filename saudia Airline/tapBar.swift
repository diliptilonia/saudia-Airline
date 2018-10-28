//
//  tapBar.swift
//  saudia Airline
//
//  Created by Dilip Kumar on 27/10/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class tapBar: UITabBar {
    
    @IBInspectable var height: CGFloat = 0.0

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        var sizeThatFits = super.sizeThatFits(size)
        if height > 0.0 {
            sizeThatFits.height = height
        }
        return sizeThatFits
    }
}
