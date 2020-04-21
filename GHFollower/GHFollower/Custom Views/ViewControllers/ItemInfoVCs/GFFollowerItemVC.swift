//
//  GFFollowerItemVC.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/19/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {

    override func viewDidLoad() {
            super.viewDidLoad()
            configureItems()
        }
        
        
        private func configureItems() {
            itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
            itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
            actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
            
        }
    
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
    
}
