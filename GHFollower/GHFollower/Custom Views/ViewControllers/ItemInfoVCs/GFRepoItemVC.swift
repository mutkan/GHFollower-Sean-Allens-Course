//
//  GFRepoItemVC.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/19/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

protocol GFRepoItemVCDelegate: class {
    func didTapGitHubProfile(for user: User)
}

class GFRepoItemVC: GFItemInfoVC {
    
    weak var delegate: GFRepoItemVCDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
        
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
}
