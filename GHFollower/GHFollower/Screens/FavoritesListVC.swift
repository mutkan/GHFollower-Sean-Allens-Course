//
//  FavoritesListVC.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 1/9/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {
    
    let tableView = UITableView()
    var favorites = [Follower]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureTableView()

    }
    
    
    func configureViewController() {
        view.backgroundColor    = .systemBackground
        title                   = "Favorites"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func configureTableView() {
        view.addSubview(tableView)
        tableView.frame         = view.bounds
        tableView.rowHeight     = 80
        tableView.delegate      = self
        tableView.dataSource    = self
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


// MARK: - UITableViewDelegate, UITableViewDataSource
extension FavoritesListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favorites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteCell.reuseID, for: indexPath) as! FavoriteCell
        let favorite = favorites[indexPath.row]
        cell.set(favorite: favorite)
        return cell
    }
    
    
}
