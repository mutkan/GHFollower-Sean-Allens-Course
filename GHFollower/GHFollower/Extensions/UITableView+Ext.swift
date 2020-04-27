//
//  UITableView+Ext.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/26/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

extension UITableView {
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
