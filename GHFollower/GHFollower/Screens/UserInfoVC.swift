//
//  UserInfoVC.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/15/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {
    
    let headerView = UIView()
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        title = username
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                print(user)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "OK")
            }
        }
        
        layoutUI()
    }
    
    
    func layoutUI() {
        view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = .systemPink
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 180)
        ])
    }
    
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    

}
