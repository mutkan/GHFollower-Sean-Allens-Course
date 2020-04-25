//
//  FavoritesListVC.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 1/9/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {
    
    let tableVIew = UITableView()
    var favorites = [Follower]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()

    }
    
    
    func configureViewController() {
        view.backgroundColor    = .systemBackground
        title                   = "Favorites"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func getFavorites() {
        PersistenceManager.retrieveFavorites { (result) in
            switch result {
            case .success(let favorites):
                self.favorites = favorites
            case .failure(let error):
                break
            }
        }
    }

}
