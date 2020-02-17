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
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        configureViewController()
        getFollowers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    func getFollowers() {
        NetworkManager.share.getFollowers(for: username, page: 1) { result in
            
            switch result {
            case .success(let followers):
                print("Followers.count = \(followers.count)")
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Bad Stuff happend", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createThreeColumnFlowLayout())
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemPink
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }
    
    
    func createThreeColumnFlowLayout() -> UICollectionViewFlowLayout {
        let width                       = view.bounds.width //get the views total width
        let padding: CGFloat            = 12 // padding is the space between the edge of the phone and the first (or last) column
        let minimumItemSpacing: CGFloat = 10 // space between each cell
        let availableWidth              = width - (padding * 2) - (minimumItemSpacing * 2) // get the real available width space
        let itemWidth                   = availableWidth / 3 // now from that real available space get the space for each cell
        
        let flowLayout                  = UICollectionViewFlowLayout()
        flowLayout.sectionInset         = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize             = CGSize(width: itemWidth, height: itemWidth + 40) // the 40 are just because the FollowerCell has a label at the bottom (with a size of 20) but it can be anything (40, 50, 20, etc)
        return flowLayout
    }

}
