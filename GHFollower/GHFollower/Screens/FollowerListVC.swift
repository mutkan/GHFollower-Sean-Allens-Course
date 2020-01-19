//
//  FollowerListVC.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 1/16/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
