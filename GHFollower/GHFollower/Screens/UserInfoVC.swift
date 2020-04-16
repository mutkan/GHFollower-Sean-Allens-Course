//
//  UserInfoVC.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/15/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    

}
