//
//  GFTabBarController.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/25/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().tintColor = .systemGreen
        let searchNC                    = createSearchNavigationController()
        let favoritesNC                 = createFavoritesNavigationController()
        viewControllers                 = [searchNC, favoritesNC]
    }
    
    
    private func createSearchNavigationController() -> UINavigationController {
        let searchVC        = SearchVC()
        searchVC.title      = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    
    private func createFavoritesNavigationController() -> UINavigationController {
        let favoriteListVC          = FavoritesListVC()
        favoriteListVC.title        = "Favorites"
        favoriteListVC.tabBarItem   = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favoriteListVC)
    }
}
