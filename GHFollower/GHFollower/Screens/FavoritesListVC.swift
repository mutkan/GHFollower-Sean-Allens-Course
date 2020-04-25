//
//  FavoritesListVC.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 1/9/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBlue
        
        
        PersistenceManager.retrieveFavorites { (result) in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }

}
