//
//  GFDataLoadingVC.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/25/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import UIKit

class GFDataLoadingVC: UIViewController {

    var containerView: UIView!
    
    func showLoadingView() {
            containerView = UIView(frame: view.bounds)
            view.addSubview(containerView)
            
            containerView.backgroundColor   = .systemBackground
            containerView.alpha             = 0
            
        UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
            
            let activityIndicator = UIActivityIndicatorView(style: .large)
            containerView.addSubview(activityIndicator)
            
            activityIndicator.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                activityIndicator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
                activityIndicator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
            ])
            
            activityIndicator.startAnimating()
        }
        
        
        func dismissLoadingView() {
            DispatchQueue.main.async {
                self.containerView.removeFromSuperview()
                self.containerView = nil
            }
            
            //Dismiss with animation by James Kinipe in comments
    //        DispatchQueue.main.async {
    //            UIView.animate(withDuration: 0.25, animations: {
    //                containerView.alpha = 0.0
    //            }) { (true) in
    //                containerView.removeFromSuperview()
    //                containerView = nil
    //            }
    //        }
        }
        
        
        func showEmptyStateView(with message: String, in view: UIView) {
            let emptyStateView = GFEmptyStateView(message: message)
            emptyStateView.frame = view.bounds
            view.addSubview(emptyStateView)
        }

}
