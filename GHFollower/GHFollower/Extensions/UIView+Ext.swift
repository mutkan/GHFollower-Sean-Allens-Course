//
//  UIView+Ext.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/25/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
    
}
