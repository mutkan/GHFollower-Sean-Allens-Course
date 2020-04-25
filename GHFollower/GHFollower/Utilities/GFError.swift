//
//  GFError.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/15/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try ahain."
    case unableToComplete = "Unable to complete your request. Plese check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again"
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorites = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites = "You've already favorited this user.You must REALLY like them!"
}
