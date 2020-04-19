//
//  Date+Ext.swift
//  GHFollower
//
//  Created by Roberto Halgravez on 4/19/20.
//  Copyright © 2020 Roberto Halgravez. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearForamt() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
