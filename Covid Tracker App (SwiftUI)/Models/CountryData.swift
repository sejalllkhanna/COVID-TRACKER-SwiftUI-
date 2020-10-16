//
//  CountryData.swift
//  Covid Tracker App (SwiftUI)
//
//  Created by sejal khanna on 15/10/20.
//  Copyright © 2020 sejal khanna. All rights reserved.
//

import Foundation

struct Result: Decodable {
    var country: String
    var cases: Int
    var todayCases: Int
    var deaths: Int
    var todayDeaths: Int
}
